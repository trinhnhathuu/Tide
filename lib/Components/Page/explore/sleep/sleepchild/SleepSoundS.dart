import 'package:flutter/material.dart';
import 'package:tide/Components/Page/explore/sleep/sleeptype/SoundscapesType.dart';
class SleepSoundS extends StatelessWidget {
 
List<Map<String, dynamic>>soundscapes = [
    {
      'Img': 'images/imagesMeditaion/color.png',
      'Name': 'Way of light',
      'NumberOfPepole': 'How to Make Learning Easier?',
    },
    {
      'Img': 'images/imagesMeditaion/color.png',
      'Name': 'Underwater',
      'NumberOfPepole': 'Four Ways to Have a Good Sleep',
    },
    {
      'Img':'images/imagesMeditaion/color.png',
      'Name': 'YogaNidra Soft and Swift',
      'NumberOfPepole': 'never give up',
    },
    {
      'Img':'images/imagesMeditaion/color.png',
      'Name': 'YogaNidra stream Purification',
      'NumberOfPepole': 'never give up',
    },
    {
      'Img':'images/imagesMeditaion/color.png',
      'Name': 'New Year',
      'NumberOfPepole': 'never give up',
    },
    {
      'Img': 'images/imagesMeditaion/color.png',
      'Name': 'Stressed',
      'NumberOfPepole': 'How to Make Learning Easier?',
    },
    {
      'Img': 'images/imagesMeditaion/color.png',
      'Name': 'Sleep',
      'NumberOfPepole': 'Four Ways to Have a Good Sleep',
    },
    {
      'Img':'images/imagesMeditaion/color.png',
      'Name': 'Restful Sleep',
      'NumberOfPepole': 'never give up',
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
            children: soundscapes.map((type) => SoundscapesType(
                ImgSS: type['Img'],
                NameSS: type['Name'],
                NumberOfPepole:type ['NumberOfPepole'])).toList(),
          ),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}