import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tide/views/login/Login.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List<Map<String, dynamic>> relax = [
    {
      'text': 'Reminders',
      "icon": Icons.notifications_outlined,
    },
    {
      'text': 'Favorites',
      "icon": Icons.favorite_border_outlined,
    },
    {
      'text': 'Downloads',
      "icon": Icons.cloud_download_outlined,
    },
    {
      'text': 'Scan QR code',
      "icon": Icons.qr_code_scanner_outlined,
    },
    {
      'text': 'Settings',
      "icon": Icons.settings,
    }
  ];
  User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 177, 176, 176),
                Color.fromARGB(255, 188, 142, 142),
                Color.fromARGB(255, 92, 82, 82),
                Color.fromARGB(255, 13, 13, 13),
              ],
            ),
          ),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const SizedBox(
                  height: 20,
                  child: Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            if (user == null) {
                               Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                              
                            }
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user?.displayName ?? 'Login',
                                style:
                                    const TextStyle(color: Colors.white, fontSize: 25),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Depart on the journey of self-discovery',
                                style: TextStyle(
                                    color: Colors.greenAccent, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            color: const Color.fromARGB(118, 123, 124, 123),
                          ),
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        )
                      ]),
                ),
                Container(
                  height: 60,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color.fromARGB(118, 123, 124, 123),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Join TIDE plus',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'New user disscoount',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          alignment: Alignment.center,
                          width: 40,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 111, 0),
                                width: 1),
                            color: const Color.fromARGB(118, 123, 124, 123),
                          ),
                          child: const Text(
                            'Join',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 111, 0),
                                fontSize: 10),
                          ),
                        )
                      ]),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color.fromARGB(118, 123, 124, 123),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromARGB(241, 226, 226, 226),
                                    ),
                                    child: const Icon(
                                      Icons.access_time_outlined,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    'Today',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                            ]),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(97, 223, 64, 251),
                                  ),
                                  height: 80,
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 5, top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('Sleep',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 202, 199, 199),
                                                fontSize: 15)),
                                        Row(
                                          children: const [
                                            Text(
                                              '0',
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ),
                                            Text(
                                              ' min',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(96, 121, 228, 237),
                                  ),
                                  height: 80,
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 5, top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('Meditation',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 202, 199, 199),
                                                fontSize: 15)),
                                        Row(
                                          children: const [
                                            Text(
                                              '0',
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ),
                                            Text(
                                              ' min',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(96, 217, 145, 68),
                                  ),
                                  height: 80,
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 5, top: 10, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('Focus',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 202, 199, 199),
                                                fontSize: 15)),
                                        Row(
                                          children: const [
                                            Text(
                                              '0',
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ),
                                            Text(
                                              ' min',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color.fromARGB(118, 123, 124, 123)),
                    height: 300,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: relax.length,
                      itemBuilder: (context, index) {
                        return Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color.fromARGB(
                                                241, 226, 226, 226),
                                          ),
                                          child: Icon(
                                            relax[index]['icon'],
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                       const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          relax[index]['text'],
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                index != relax.length - 1
                                    ? Container(
                                        height: 1,
                                        width: double.infinity,
                                        color: Colors.grey[300],
                                        margin:const EdgeInsets.only(
                                            top: 5, bottom: 5, left: 40)
                                        // EdgeInsets.symmetric(vertical: 10),
                                        )
                                    : Container(),
                              ],
                            ));
                      },
                    )),
                user != null
                    ? ElevatedButton(
                        onPressed: () async {
                          await GoogleSignIn().signOut();
                          FirebaseAuth.instance.signOut();
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //     SnackBar(content: Text('Đăng xuất thành công')));
                          setState(() {
                            user = null;
                          });
                        },
                        child:const Text('Logout'),
                      )
                    : Container(),
              ],
            ),
          ))),
    );
  }
}