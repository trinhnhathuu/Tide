import 'package:flutter/material.dart';
import 'package:tide/components/profile/profile.dart';
import 'package:video_player/video_player.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('video/song.mp4')
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //! background video
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: VideoPlayer(_controller),
        ),
        //!---------------------------------------------------------------
        Positioned(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            //! text app-------------
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Text("T I D E",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 255, 255, 255))),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 2,
              ),
              child: Text("Be calm and mindful with TIDE",
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 255, 255, 255))),
            ),
            Container(
              height: 20,
              width: 20,
              color: Colors.red,
              child: IconButton(
                  onPressed: () => {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    )
                  },
                  icon: Icon(Icons.abc)),
            ),
            SizedBox(
              height: 200,
            ),
            SizedBox(
              width: 300.0,
              height: 50.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 154, 157, 158),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.start_outlined,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Continue with Google",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 300.0,
              height: 50.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 15, 156, 227),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.facebook,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Continue with Facebook",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            //! ngăn các------------
            // Container(
            //   margin: EdgeInsets.only(top: 10, bottom: 10),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Container(
            //         width: 150,
            //         height: 1,
            //         color: Color.fromARGB(255, 255, 255, 255),
            //       ),
            //       Container(
            //         margin: EdgeInsets.only(left: 10, right: 10),
            //         child: Text("OR",
            //             style: TextStyle(
            //                 fontSize: 10,
            //                 color: Color.fromARGB(255, 255, 255, 255))),
            //       ),
            //       Container(
            //         width: 150,
            //         height: 1,
            //         color: Color.fromARGB(255, 255, 255, 255),
            //       ),
            //     ],
            //   ),
            // ),
            //! các loại đăng nhập khác------------
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromARGB(255, 169, 170, 167),
                  child: IconButton(
                    icon: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 15,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromARGB(255, 169, 170, 167),
                  child: IconButton(
                    icon: Icon(
                      Icons.ad_units,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 15,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromARGB(255, 169, 170, 167),
                  child: IconButton(
                    icon: Icon(
                      Icons.add_a_photo,
                      color: Colors.black,
                      size: 15,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromARGB(255, 169, 170, 167),
                  child: IconButton(
                    icon: Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 15,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            ListTile(
                title: Text(
                  "i agree to the fllowing tems",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
                leading:
                    Radio(value: 1, groupValue: 1, onChanged: ((value) => {}))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Terms of Service",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Text(
                  "Privacy Policy",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ))
      ],
    );
  }
}
