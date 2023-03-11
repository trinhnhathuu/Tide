import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tide/Components/Page/explore/explore.dart';
import 'package:tide/Components/Page/home/home.dart';
import 'package:tide/Components/Page/profile/profile.dart';
import 'package:firebase_core/firebase_core.dart';
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
    Profile(),
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
          items: [
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
                label: 'Proflie',
                backgroundColor: Color.fromARGB(255, 0, 0, 0)),
          ],
          currentIndex: _index,
          onTap: (index) {
            setState(() => {_index = index});
          },
        ));
  }
}
