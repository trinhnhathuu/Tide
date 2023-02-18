import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tide/Components/CategoryDetails/CategoryDetailType.dart';
import 'package:tide/Components/Page/home/relaxhome_type.dart';

class Home extends StatelessWidget {
  static const Color transparent = Color(0x00000000);
  final List<Map<String, dynamic>> _relax = [
    {
      'text': 'Focus',
      "icon": Icons.filter_tilt_shift,
    },
    {
      'text': 'Sleep',
      "icon": Icons.bedtime,
    },
    {
      'text': 'Nap',
      "icon": Icons.tonality_sharp,
    },
    {
      'text': 'Breath',
      "icon": Icons.energy_savings_leaf_outlined,
    }
  ];
  final themeData = ThemeData(canvasColor: Colors.transparent);
  final chipShape = StadiumBorder(side: BorderSide(color: Colors.black12));
  String time = '5-10 MIN - SINGLES';
  final labels = [
    'Sleep',
    'Improve Focus',
    'Efficient Work',
    'Reduce Anxiety',
    'Reduce Stress'
  ];
  List<Map<String, dynamic>> relaxTypes = [
    {
      'Img': 'images/imageshomes/mua.png',
      'Name': 'Recharge',
      'Time': '5-10 MIN - SINGLES'
    },
    {
      'Img': 'images/imageshomes/cay.png',
      'Name': 'Before',
      'Time': '5-10 MIN - SINGLES'
    },
    {
      'Img': 'images/imageshomes/binhminh.png',
      'Name': 'Before Class',
      'Time': '5-10 MIN - SINGLES'
    },
    {
      'Img': 'images/imageshomes/nang.png',
      'Name': 'Sedentary',
      'Time': '5-10 MIN - SINGLES'
    },
    {
      'Img': 'images/imageshomes/mua.png',
      'Name': 'Eye Strain',
      'Time': '5-10 MIN - SINGLES'
    },
    {
      'Img': 'images/imageshomes/mua.png',
      'Name': 'Before Reading',
      'Time': '5-10 MIN - SINGLES'
    },
  ];
  List<Icon> icons = [
    Icon(
      Icons.ac_unit,
      color: Colors.white,
    ),
    Icon(
      Icons.access_alarm,
      color: Colors.white,
    ),
    Icon(
      Icons.accessibility,
      color: Colors.white,
    ),
    Icon(
      Icons.accessibility_new,
      color: Colors.white,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        constraints: BoxConstraints(
          maxHeight: double.infinity,
        ),
        decoration: BoxDecoration(color: Colors.black54),
        child: Column(
          children: [
            AppBar(
              title: Text(
                'Good day',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
              elevation: 0,
              backgroundColor: Colors.transparent,
              actions: [
                IconButton(
                  onPressed: () {
                    
                  },
                  icon: Icon(Icons.ios_share),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_circle_outline_sharp),
                ),
              ],
              flexibleSpace: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'hey',
                      style: TextStyle(color: Color.fromARGB(119, 100, 98, 98)),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              width: 180,
              height: 30.0,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.rocket_launch_outlined, color: Colors.white),
                  Text('Improva stability',
                      style: TextStyle(color: Colors.white)),
                  Icon(Icons.navigate_next,
                      color: Color.fromARGB(255, 123, 121, 121)),
                ],
              ),
            ),
            Container(
              height: 78,
              margin: EdgeInsets.only(top: 350, left: 20, right: 20),
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(
                  width: 50,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: _relax.length,
                itemBuilder: ((context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        key: const Key('avatar'),
                        radius: 20,
                        backgroundColor: Colors.white24,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            _relax[index]['icon'],
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        _relax[index]['text'],
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  );
                }),
              ),
            ),
            Container(
                height: 80,
                margin:
                    EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('images/imageshomes/mua.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                          alignment:
                              AlignmentDirectional.topStart, // <-- SEE HERE
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  'Daily Quote',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5, left: 10),
                                child: Text(
                                  'Winter is a time to gather around the fire ',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Container(
                      width: 50,
                      height: 20,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'View',
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                )),
            Container(
              height: 80,
              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/imageshomes/mua.png'),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 10, left: 10, bottom: 10, right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rain',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Chào buổi sáng ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 158, 163, 165),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: [
                      ...List.generate(5, (index) {
                        return Theme(
                          data: themeData,
                          child: ChoiceChip(
                            avatar: icons[min(index, icons.length - 1)],
                            label: Text(
                              labels[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(
                                color: Colors.white24,
                              ),
                            ),
                            selected: true,
                            selectedColor: Colors.transparent,
                          ),
                        );
                      }).map((e) => e),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 250,
              color: Colors.transparent,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Improve Peromance',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                            Text(
                              'Be focused and more creative',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.white54),
                            ),
                          ],
                        ),
                        Text(
                          'More',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    height: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: relaxTypes
                          .map((type) => RelaxHome_Type(
                              Img: type['Img'],
                              Name: type['Name'],
                              Time: type['Time']))
                          .toList(),
                    ),
                  ))
                ],
              ),
            ),
            Container(
              height: 250,
              color: Colors.transparent,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Relax Your Mind',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                            Text(
                              'Take a break when you feel tired',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.white54),
                            ),
                          ],
                        ),
                        Text(
                          'More',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    height: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: relaxTypes
                          .map((type) => RelaxHome_Type(
                              Img: type['Img'],
                              Name: type['Name'],
                              Time: type['Time']))
                          .toList(),
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
