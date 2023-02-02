import 'package:flutter/material.dart';
import 'package:tide/components/Login/Login.dart';
import 'package:tide/components/profile/test.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('chào các bạn'),
          // IconButton(
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => test()),
          //       );
          //     },
          //     icon: Icon(Icons.abc)),
          Text('chaof cac ban')
        ],
      ),
    );
  }
}
