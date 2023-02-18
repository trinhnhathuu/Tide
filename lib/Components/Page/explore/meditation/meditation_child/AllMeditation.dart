import 'package:flutter/material.dart';
import 'package:tide/Components/Page/explore/meditation/meditationType/MeditaionType.dart';
class AllMeditation extends StatelessWidget {
  
   List<Map<String, dynamic>> all_meditaion = [
    {
      'Img': 'images/imagesMeditaion/may.png',
      'Name': 'Focus',
      'Tell_yourself': 'How to Make Learning Easier?',
    },
    {
      'Img': 'images/imagesMeditaion/moon1.png',
      'Name': 'morning Intetion',
      'Tell_yourself': 'Four Ways to Have a Good Sleep',
    },
    {
      'Img':'images/imagesMeditaion/moon2.png',
      'Name': 'YogaNidra Soft and Swift',
      'Tell_yourself': 'never give up',
    },
    {
      'Img':'images/imagesMeditaion/moon3.png',
      'Name': 'YogaNidra stream Purification',
      'Tell_yourself': 'never give up',
    },
    {
      'Img':'images/imagesMeditaion/da.png',
      'Name': 'New Year',
      'Tell_yourself': 'never give up',
    },
    {
      'Img': 'images/imagesMeditaion/color.png',
      'Name': 'Stressed',
      'Tell_yourself': 'How to Make Learning Easier?',
    },
    {
      'Img': 'images/imagesMeditaion/may.png',
      'Name': 'Sleep',
      'Tell_yourself': 'Four Ways to Have a Good Sleep',
    },
    {
      'Img':'images/imagesMeditaion/may.png',
      'Name': 'Restful Sleep',
      'Tell_yourself': 'never give up',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 100),
      width: 150,
      child: GridView.count(
        crossAxisCount: 2,
        children: all_meditaion.map((type) => MeditationType(
            ImageM: type['Img'],
            TitleM: type['Name'],
            DescriptionM: type['Tell_yourself'])).toList(),
      ),
    );
  }
}