import 'dart:async';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerWidget extends StatefulWidget {
  const AudioPlayerWidget({Key? key}) : super(key: key);

  @override
  _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  late AudioPlayer _player;
  final _audioFilePath = 'assets/audio/sleep.m4a';
  bool _isPlaying = false;

  StreamController<Duration> _durationStreamController =
      StreamController<Duration>();
  Stream<Duration> get _durationStream => _durationStreamController.stream;

  StreamController<Duration> _positionStreamController =
      StreamController<Duration>();
  Stream<Duration> get _positionStream => _positionStreamController.stream;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _loadAudio();
  }

  Future<void> _loadAudio() async {
    await _player.setAsset(_audioFilePath);
    _durationStreamController.add(_player.duration!);
    _player.positionStream.listen((position) {
      _positionStreamController.add(position);
    });
  }

  @override
  void dispose() {
    _player.dispose();
    _durationStreamController.close();
    _positionStreamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            StreamBuilder(
              stream: _positionStream,
              builder: (context, snapshot) {
                final position = snapshot.data ?? Duration.zero;
                return Text(
                  '${position.inMinutes}:${(position.inSeconds % 60).toString().padLeft(2, '0')}',
                  style: TextStyle(fontSize: 20),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _isPlaying
                    ? ElevatedButton(
                        child: Text('Pause'),
                        onPressed: () async {
                          await _player.pause();
                          setState(() {
                            _isPlaying = false;
                          });
                        },
                      )
                    : ElevatedButton(
                        child: Text('Play'),
                        onPressed: () async {
                          await _player.play();
                          setState(() {
                            _isPlaying = true;
                          });

                        },
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
