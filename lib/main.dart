import 'package:flutter/material.dart';
import 'package:tide/components/Login/Login.dart';
import 'package:tide/components/explore/explore.dart';
import 'package:tide/components/home/home.dart';
import 'package:tide/components/profile/profile.dart';
import 'package:tide/test.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  final tabs = [
    Home(),
    Explore(),
    Test(),
    // Login(),
    // Profile(),
  ];
  static const Color transparent = Color(0x00000000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              tabs[_index],
              // Login(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.shifting,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                label: 'Explore',
                backgroundColor: Color.fromARGB(255, 0, 0, 0)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Proflie',
                backgroundColor: Colors.black12),
          ],
          currentIndex: _index,
          onTap: (index) {
            setState(() => {_index = index});
          },
        ));
  }
}
