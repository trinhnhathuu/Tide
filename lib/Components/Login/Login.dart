import 'package:flutter/material.dart';
import 'package:tide/Components/Login/button_signin.dart';
import 'package:tide/Components/Login/more_signin.dart';

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
                        SignInBtn(
                          onTap: () {},
                          iconPath: 'assets/logos/google.png',
                          textLabel: 'Sign in with Google',
                          backgroundColor: Colors.grey.shade300,
                        ),
                        SignInBtn(
                          onTap: () {},
                          iconPath: 'assets/logos/facebook.png',
                          textLabel: 'Sign in with Facebook',
                          backgroundColor: Colors.blue.shade300,
                        ),
                        SizedBox(height: 50,),
                        //! các loại đăng nhập khác------------
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 20),
                            SignInMore(

                              backgoundColor: Colors.white24,
                              Icontype: Icons.email_outlined,
                              iconColor: Colors.white,
                              onTap: (){},
                            ),

                            SignInMore(
                              backgoundColor: Colors.white24,
                              Icontype: Icons.ad_units_outlined,
                              iconColor: Colors.white,
                              onTap: (){},
                            ),

                            SignInMore(
                              backgoundColor: Colors.white24,
                              Icontype: Icons.chat_bubble_outline,
                              iconColor: Colors.white,
                              onTap: (){},
                            ),

                            SignInMore(
                              backgoundColor: Colors.white24,
                              Icontype: Icons.more_horiz,
                              iconColor: Colors.white,
                              onTap: (){},
                            ),
                            SizedBox(width: 20),

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
