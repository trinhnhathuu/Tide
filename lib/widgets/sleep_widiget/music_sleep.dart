import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerWidget extends StatefulWidget {
  const AudioPlayerWidget({Key? key}) : super(key: key);

  @override
  _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  String? musicUrl;
  String? imageUrl;
  final storage = FirebaseStorage.instance;
  bool isPlaying = false;
  double value = 0;
  final player = AudioPlayer();
  Duration? duration = const Duration(seconds: 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPlayer();
    // getImageUrl();
    getRandomImageUrl();
  }



  // Future<void> getImageUrl() async {
  //   // Get the feference to the image file in Firebase Storage
  //   final ref = storage.ref().child('/images/1.png');
  //   // Get teh inageUrl to download URL
  //   imageUrl = await ref.getDownloadURL();
  //  print('imageUrl, ${imageUrl}');
  // setState(() {});
  //
  // }


  Future<void> getRandomImageUrl() async {
    // Lấy danh sách các tệp ảnh có sẵn trong Firebase Storage
    final ListResult result = await storage.ref().child('images/').listAll();
    final List<Reference> allFiles = result.items;
    // Kiểm tra nếu không có tệp ảnh nào
    if (allFiles.isEmpty) {
      return null;
    }
    // Lấy một số ngẫu nhiên từ 0 đến độ dài của danh sách tệp ảnh
    int randomIndex = Random().nextInt(allFiles.length);
    // Lấy tệp ảnh tương ứng với số ngẫu nhiên đã chọn
    Reference randomImageRef = allFiles[randomIndex];
    // Lấy URL tải xuống của tệp ảnh
     imageUrl = await randomImageRef.getDownloadURL();
    print('imageUrl là : $imageUrl');
    setState(() {});

  }


// lấy all đường dẫn nhạc
  Future<List<String>> getAllMusicUrls() async {
    final storage = FirebaseStorage.instance;
    final musicRef = storage.ref().child('music/');
    final ListResult result = await musicRef.listAll();
    List<String> musicUrls = [];
    for (final ref in result.items) {
      final downloadUrl = await ref.getDownloadURL();
      musicUrls.add(downloadUrl);
    }
    return musicUrls;
  }

  void initPlayer() async {
    List<String> musicUrls = await getAllMusicUrls();
    if (musicUrls.isNotEmpty) {
      final random = Random();
      final randomIndex = random.nextInt(musicUrls.length);
      musicUrl = musicUrls[randomIndex];
      await player.setSourceUrl(musicUrl!);
      duration = await player.getDuration();
    }
  }

  //init the player

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            height: 300.0,
            width: 300.0,
            decoration:  BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/flutter-tide.appspot.com/o/hii.png?alt=media&token=e5e71a8b-ae4a-4316-9fbc-b28f4820caca'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 28, sigmaY: 28),
              child: Container(
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //setting the music cover

              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: imageUrl != null
                    ? Image.network(imageUrl!, width: 300.0)
                    : CircularProgressIndicator(),
              ),




              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Summer",
                style: TextStyle(
                    color: Colors.white, fontSize: 36, letterSpacing: 6),
              ),
              //Setting the seekbar
              const SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${(value / 60).floor()}: ${(value % 60).floor()}",
                    style: const TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 260.0,
                    child: Slider.adaptive(
                      onChangeEnd: (newValue) async {
                        setState(() {
                          value = newValue;
                        });
                        await player.seek(Duration(seconds: newValue.toInt()));
                      },
                      min: 0.0,
                      value: value,
                      max: 214.0,
                      onChanged: (value) {},
                      activeColor: Colors.white,
                    ),
                  ),
                  Text(
                    "${duration!.inMinutes} : ${duration!.inSeconds % 60}",
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              //setting the player controller
              const SizedBox(
                height: 60.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      color: Colors.black87,
                      border: Border.all(color: Colors.white38),
                    ),
                    width: 50.0,
                    height: 50.0,
                    child: InkWell(
                      onTapDown: (details) {
                        player.setPlaybackRate(0.5);
                      },
                      onTapUp: (details) {
                        player.setPlaybackRate(1);
                      },
                      child: const Center(
                        child: Icon(
                          Icons.fast_rewind_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      color: Colors.black87,
                      border: Border.all(color: Colors.pink),
                    ),
                    width: 60.0,
                    height: 60.0,
                    child: InkWell(
                      onTap: () async {
                        if (isPlaying) {
                          await player.pause();
                          setState(() {
                            isPlaying = false;
                          });
                        } else {
                          await player.resume();
                          setState(() {
                            isPlaying = true;
                          });
                          player.onPositionChanged.listen((Duration p) {
                            setState(() {
                              value = p.inSeconds.toDouble();
                            });
                          });
                        }
                      },
                      child: Center(
                        child: isPlaying
                            ? const Icon(Icons.pause, color: Colors.white)
                            : const Icon(Icons.play_arrow, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      color: Colors.black87,
                      border: Border.all(color: Colors.white38),
                    ),
                    width: 50.0,
                    height: 50.0,
                    child: InkWell(
                      onTapDown: (details) {
                        player.setPlaybackRate(2);
                      },
                      onTapUp: (details) {
                        player.setPlaybackRate(1);
                      },
                      child: const Center(
                        child: Icon(
                          Icons.fast_forward_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
