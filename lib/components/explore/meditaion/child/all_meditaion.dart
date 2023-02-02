
import 'package:flutter/material.dart';
import 'package:tide/components/explore/meditaion/meditaion_type.dart';
class AllMeditaioin extends StatefulWidget {
  const AllMeditaioin({Key? key}) : super(key: key);

  @override
  State<AllMeditaioin> createState() => _AllMeditaioinState();
}

class _AllMeditaioinState extends State<AllMeditaioin> {
  List<Map<String, dynamic>> all_meditaion = [
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
      margin: EdgeInsets.only(bottom: 100),
      width: 175,
      child: GridView.count(
        crossAxisCount: 2,
        children: all_meditaion.map((type) => Meditaion_Type(
            image: type['Img'],
            title: type['Name'],
            description: type['Tell_yourself'])).toList(),
      ),
    );
  }
}
