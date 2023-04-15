

import 'package:cloud_firestore/cloud_firestore.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import'../../widgets/home_widget/relaxhome_type.dart';
import '../../widgets/home_widget/chose_type.dart';


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
  final chipShape = const StadiumBorder(side: BorderSide(color: Colors.black12));
  String time = '5-10 MIN - SINGLES';
  final labels = [
    'Sleep',
    'Improve Focus',
    'Efficient Work',
    'Reduce Anxiety',
    'Reduce Stress'
  ];
  final CollectionReference _cards = FirebaseFirestore.instance.collection('card');
  List<Icon> icons = [
    const Icon(
      Icons.ac_unit,
      color: Colors.white,
    ),
    const Icon(
      Icons.access_alarm,
      color: Colors.white,
    ),
    const Icon(
      Icons.accessibility,
      color: Colors.white,
    ),
    const Icon(
      Icons.accessibility_new,
      color: Colors.white,
    )
  ];

  Home({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(
            maxHeight: double.infinity,
          ),
          decoration: const BoxDecoration(
            // tạo màu gradient
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 105, 189, 224),
                Color.fromARGB(255, 232, 221, 148),
                Color.fromARGB(255, 242, 227, 153),
                Color.fromARGB(255, 142, 225, 205),
              ],
            ),
          ),
          child: Column(
            children: [
              AppBar(
                title: const Text(
                  'Good day',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                elevation: 0,
                backgroundColor: Colors.transparent,
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.ios_share),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle_outline_sharp),
                  ),
                ],
                flexibleSpace: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'hey',
                      style: TextStyle(color: Color.fromARGB(119, 100, 98, 98)),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                width: 180,
                height: 30.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
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
                margin: const EdgeInsets.only(top: 350, left: 20, right: 20),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    
                   Chose(text: 'Focus',icon: Icons.filter_tilt_shift,),
                    Chose(text: 'Sleep',icon: Icons.bedtime,),
                    Chose(text: 'Nap',icon: Icons.tonality_sharp,),
                    Chose(text: 'Breathe',icon: Icons.energy_savings_leaf_outlined,),
                 
                ],)
                  
                
              ),
              Container(
                  height: 80,
                  margin:
                      const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(141, 62, 61, 61),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: NetworkImage("https://i.pinimg.com/564x/2a/30/ef/2a30eff09533e77d4d4ee9ea4589f1d0.jpg"),
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
                                  margin: const EdgeInsets.only(top: 10, left: 10),
                                  child: const Text(
                                    'Daily Quote',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 5, left: 10),
                                  child: const Text(
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
                        margin: const EdgeInsets.only(right: 10),
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
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://i.pinimg.com/564x/90/39/ce/9039ced1cf29142a6430a5d740bce5e5.jpg"),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Container(
                          margin: const EdgeInsets.only(
                              top: 10, left: 10, bottom: 10, right: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
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
                        color: const Color.fromARGB(255, 158, 163, 165),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      width: 20,
                      height: 20,
                      margin: const EdgeInsets.only(right: 10),
                      child: const Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              // Container(
              //   margin: EdgeInsets.only(left: 20, right: 20,),
              //   child: Column(
              //     children: [
              //       Wrap(
              //         alignment: WrapAlignment.start,
              //         crossAxisAlignment: WrapCrossAlignment.start,
              //         spacing: 8.0,
              //         runSpacing: 3.0,
              //         children: [
              //           ...List.generate(5, (index) {
              //             return Theme(
              //               data: themeData,
              //               child: ChoiceChip(
              //                 avatar: icons[min(index, icons.length - 1)],
              //                 label: Text(
              //                   labels[index],
              //                   style: TextStyle(
              //                     color: Colors.white,
              //                     fontSize: 10,
              //                   ),
              //                 ),
              //                 shape: RoundedRectangleBorder(
              //                   borderRadius: BorderRadius.circular(20.0),
              //                   side: BorderSide(
              //                     color: Color.fromARGB(255, 255, 255, 255),
              //                   ),
              //                 ),
              //                 backgroundColor: Color.fromARGB(255, 255, 255, 255),
              //                 selected: true,
              //                 selectedColor: Colors.transparent,
              //                 disabledColor: Color.fromARGB(255, 226, 145, 145),
              //                 onSelected: (bool selected) {
              //                   Navigator.push(
              //                       context,
              //                       MaterialPageRoute(
              //                           builder: (context) =>
              //                               const CategoryDetail()));
              //                 },
              //               ),
              //             );
              //           }).map((e) => e),
              //         ],
              //       )
              //     ],
              //   ),
              // ),
              Container(
                height: 250,
                color: Colors.transparent,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
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
                          const Text(
                            'More',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child:StreamBuilder(
                          stream: _cards.snapshots(),
                          builder: (context,AsyncSnapshot<QuerySnapshot> streamSnapshot){
                            if(streamSnapshot.hasData){
                              final cardDocs = streamSnapshot.data!.docs;
                                return SizedBox(
                                  height: 230,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: cardDocs
                                        .map((type) => RelaxHome_Type(
                                        Img: type['img'],
                                        Name: type['name'],
                                        Time: type['time']))
                                        .toList(),
                                  ),
                                );
                              }
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        )
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
                      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
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
                          const Text(
                            'More',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child:StreamBuilder(
                          stream: _cards.snapshots(),
                          builder: (context,AsyncSnapshot<QuerySnapshot> streamSnapshot){
                            if(streamSnapshot.hasData){
                              final cardDocs = streamSnapshot.data!.docs;
                                return SizedBox(
                                  height: 230,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: cardDocs
                                        .map((type) => RelaxHome_Type(
                                        Img: type['img'],
                                        Name: type['name'],
                                        Time: type['time']))
                                        .toList(),
                                  ),
                                );
                              }
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        )
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
