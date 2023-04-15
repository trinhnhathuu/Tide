import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import '../../Routes.dart';
import '../../provider/google_login_provider.dart';
import '../../widgets/login_widget/button_signin.dart';
import '../../widgets/login_widget/more_signin.dart';
import '../homepage/bottombar.dart';
import '../profile/profile.dart';
import '../../notification.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      // tạo nền gradient
      decoration: const BoxDecoration(
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
            child: const Text("T I D E",
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 255, 255, 255))),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 2,
            ),
            child: const Text("Be calm and mindful with TIDE",
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
                          onTap: () {
                            final provider = Provider.of<GoogleSignInProvider>(
                                context,
                                listen: false);
                            provider.registerOnLoggedIn(() {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()),
                              );
                            });
                            provider.LogInGoogle();
                          },
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
                        const SizedBox(
                          height: 50,
                        ),
                        //? các loại đăng nhập khác------------
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(width: 20),
                            SignInMore(
                              backgoundColor: Colors.white24,
                              Icontype: Icons.email_outlined,
                              iconColor: Colors.white,
                              onTap: () {},
                            ),
                            SignInMore(
                              backgoundColor: Colors.white24,
                              Icontype: Icons.ad_units_outlined,
                              iconColor: Colors.white,
                              onTap: () {},
                            ),
                            SignInMore(
                              backgoundColor: Colors.white24,
                              Icontype: Icons.chat_bubble_outline,
                              iconColor: Colors.white,
                              onTap: () {},
                            ),
                            SignInMore(
                              backgoundColor: Colors.white24,
                              Icontype: Icons.more_horiz,
                              iconColor: Colors.white,
                              onTap: () {},
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(left: 50),
                          child: ListTile(
                              title: const Text(
                                "i agree to the fllowing tems",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              leading: Radio(
                                  value: 1,
                                  groupValue: 1,
                                  onChanged: ((value) => {}),
                                  activeColor: Colors.red)),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
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
