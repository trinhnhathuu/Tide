import 'package:flutter/material.dart';
import 'package:tide/components/explore/sleep/asleep_soundscapes/soundscapes_sleeptype.dart';

class SSoundscapes extends StatefulWidget {
  const SSoundscapes({Key? key}) : super(key: key);

  @override
  State<SSoundscapes> createState() => _SSoundscapesState();
}

class _SSoundscapesState extends State<SSoundscapes> {
  List<Map<String, dynamic>>soundscapes = [
    {
      'Img': 'img/nen.png',
      'Name': 'Focus',
      'Tell_yourself': 'How to Make Learning Easier?',
    },
    {
      'Img': 'img/song.png',
      'Name': 'morning Intetion',
      'Tell_yourself': 'Four Ways to Have a Good Sleep',
    },
    {
      'Img':'img/imgMeditaion/color.png',
      'Name': 'YogaNidra Soft and Swift',
      'Tell_yourself': 'never give up',
    },
    {
      'Img':'img/imgMeditaion/da.png',
      'Name': 'YogaNidra stream Purification',
      'Tell_yourself': 'never give up',
    },
    {
      'Img':'img/imgMeditaion/may.png',
      'Name': 'New Year',
      'Tell_yourself': 'never give up',
    },
    {
      'Img': 'img/nen.png',
      'Name': 'Stressed',
      'Tell_yourself': 'How to Make Learning Easier?',
    },
    {
      'Img': 'img/song.png',
      'Name': 'Sleep',
      'Tell_yourself': 'Four Ways to Have a Good Sleep',
    },
    {
      'Img':'img/imgMeditaion/color.png',
      'Name': 'Restful Sleep',
      'Tell_yourself': 'never give up',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15,left: 15),
      width: 150,

      child: ListView(
        children: <Widget>[
          Wrap(
            spacing: 30,
            runSpacing: 20,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: soundscapes.map((type) => Soundscapes_type(
                image: type['Img'],
                title: type['Name'],
                description:type ['Tell_yourself'])).toList(),
          ),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}
