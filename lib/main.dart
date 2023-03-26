
import 'package:flutter/material.dart';


import 'package:tide/views/home/home.dart';
import 'package:tide/views/profile/profile.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';

import 'Routes.dart';
import 'views/explore/explore/explore.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      routes: Routes.routes,
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 int _index = 0;
  final tabs = [
    Home(),
   const Explore(),
    const Profile(),
  ];

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
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                label: 'Explore',
                backgroundColor: Color.fromARGB(255, 0, 0, 0)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Color.fromARGB(255, 0, 0, 0)),
          ],
          currentIndex: _index,
          onTap: (index) {
            setState(() => {_index = index});
          },
        ));
  }
}
