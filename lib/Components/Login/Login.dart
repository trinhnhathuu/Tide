import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      // tạo nền gradient
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 225, 228, 74),
            Color.fromARGB(255, 226, 188, 51),
            Color.fromARGB(255, 225, 98, 223),
            Colors.blueAccent,
          ],
        ),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 100),
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
          Expanded(
            child: Stack(
              children: [
                Positioned(
                    bottom: 5,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
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
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(
                                    'images/imagesMeditaion/may.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Continue with Google",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        
                       Container(
                        margin: EdgeInsets.only(bottom: 20,top:20),
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
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                       ),
                        //! các loại đăng nhập khác------------
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor:
                                  Color.fromARGB(255, 169, 170, 167),
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
                              backgroundColor:
                                  Color.fromARGB(255, 169, 170, 167),
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
                              backgroundColor:
                                  Color.fromARGB(255, 169, 170, 167),
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
                              backgroundColor:
                                  Color.fromARGB(255, 169, 170, 167),
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
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 50),
                            child: ListTile(
                            title: Text(
                              "i agree to the fllowing tems",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            leading: Radio(
                                value: 1,
                                groupValue: 1,
                                onChanged: ((value) => {}),
                                activeColor: Colors.red
                                )),
                                
                          ),
                        
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
            ),
          )
        ],
      ),
    ));
  }
}
