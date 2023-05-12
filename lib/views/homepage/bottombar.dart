import 'package:flutter/material.dart';
import '../../notification.dart';
import '../explore/explore/explore.dart';
import '../home/home.dart';
import '../profile/profile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

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

