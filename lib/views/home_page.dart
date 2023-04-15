
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tide/views/homepage/bottombar.dart';
import 'package:tide/views/profile/profile.dart';

import '../views/home/home.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData){
            print('Đã Đăng Nhập');
            return  MyHomePage();
          }else if(snapshot.hasError){
            return Center(child: Text('Something wwent Worng'));
          } else {
            print('User is currently signed out!');
            return const MyHomePage();
          }
        },
      ),
    );
  }
}