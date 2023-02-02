import 'package:flutter/material.dart';
import 'package:tide/components/explore/child/explore_type.dart';
import 'package:tide/components/explore/child/foryou_type.dart';
import 'package:tide/components/explore/child/selcetedtype/selectedmixsound.dart';
import 'package:tide/components/explore/child/selcetedtype/selectedstory.dart';

class ExploreChild extends StatefulWidget {
  const ExploreChild({Key? key}) : super(key: key);

  @override
  State<ExploreChild> createState() => _ExploreChildState();
}

class _ExploreChildState extends State<ExploreChild> {
  static const Color text = Color(0xFFFFFFFF);
  List<Map<String, dynamic>> exploreTypes = [
    {'Img': 'img/rain.png', 'Name': 'Commuting', 'Time': '5 MIN - SINGLES'},
    {'Img': 'img/cay.png', 'Name': 'Confidence', 'Time': '5-10 MIN - SINGLES'},
    {
      'Img': 'img/hoa.png',
      'Name': 'Work Burnout',
      'Time': '5-10 MIN - SINGLES'
    },
    {
      'Img': 'img/mua.png',
      'Name': 'Before Class',
      'Time': '5-10 MIN - SINGLES'
    },
    {
      'Img': 'img/binhminh.png',
      'Name': 'Boredom',
      'Time': '5-10 MIN - SINGLES'
    },
    {'Img': 'img/cay.png', 'Name': 'Inspiration', 'Time': '15 MIN - SINGLES'},
  ];
  List<Map<String, dynamic>> exploreTypes_1 = [
    {
      'Img': 'img/rain.png',
      'Name': 'Productivity',
      'Time': '5 Sessions-SERIES'
    },
    {
      'Img': 'img/cay.png',
      'Name': 'Effective Communication',
      'Time': '6 Sessions-SERIES'
    },
    {
      'Img': 'img/hoa.png',
      'Name': 'Coping with Stress',
      'Time': '5 Sessions-SERIES'
    },
    {'Img': 'img/mua.png', 'Name': 'Happiness', 'Time': '5 Sessions-SERIES'},
    {
      'Img': 'img/binhminh.png',
      'Name': 'Intimate Relationship',
      'Time': '5 Sessions-SERIES'
    },
    {'Img': 'img/cay.png', 'Name': 'Fantasyland', 'Time': '8 Sessions-SERIES'},
  ];
  List<Map<String, dynamic>> selected_mix = [
    {
      'Img': 'img/rain.png',
      'Name': 'Fireworks at Sea',
    },
    {
      'Img': 'img/cay.png',
      'Name': 'Through the Forest',
    },
    {
      'Img': 'img/hoa.png',
      'Name': 'Snowy Cabin',
    },
    {
      'Img': 'img/mua.png',
      'Name': 'Raniy Night',
    },
    {
      'Img': 'img/binhminh.png',
      'Name': 'Creative Cafe',
    },
    {
      'Img': 'img/cay.png',
      'Name': 'Pine Streams',
    },
  ];
  List<Map<String, dynamic>> selected_sound = [
    {
      'Img': 'img/nhai.png',
      'Name': 'Realm of Softness',
    },
    {
      'Img': 'img/sun.png',
      'Name': 'Blue Hour',
    },
    {
      'Img': 'img/hoa.png',
      'Name': 'Stove Fire',
    },
    {
      'Img': 'img/mua.png',
      'Name': 'Wind',
    },
    {
      'Img': 'img/binhminh.png',
      'Name': 'Valley',
    },
    {
      'Img': 'img/cay.png',
      'Name': 'Deep Sea',
    },
  ];
  List<Map<String, dynamic>> selected_story = [
    {
      'Img': 'img/nen.png',
      'Name': 'Performance',
      'Tell_yourself': 'How to Make Learning Easier?',
    },
    {
      'Img': 'img/song.png',
      'Name': 'Sleep',
      'Tell_yourself': 'Four Ways to Have a Good Sleep',
    },
    {
      'Img':'img/imgMeditaion/color.png',
      'Name': 'Nap',
      'Tell_yourself': 'never give up',
    },
  ];

  List<Map<String, dynamic>> forYou = [
    {
      'nameU': 'Jenny_sun',
      'AvatarU': 'img/cay.png',
      'nameType': 'Rainy Parking',
      'feelings':
          'Thanks to TIde, I can go to bed with my favorite sound, as ì raindrops were falling on the cars and falling into my dreams',
      'imgType': 'img/rain.png',
      'subType': 'sound',
    },
    {
      'nameU': 'Natalie-',
      'AvatarU': 'img/cay.png',
      'feelings':
          'From the first my dad took me to see science fiction, I started to love the universe. The moment I closed my eyes listening to the,sound I fleft..',
      'nameType': 'Spacewalk',
      'imgType': 'img/rain.png',
      'subType': 'Meditation',
    },
    {
      'nameU': 'Jasmine167',
      'AvatarU': 'img/hoa.png',
      'feelings':
          'The sound made me remember my childhood, my grandma ussed to like take me to the temple, Those memories are very important to me.And.',
      'nameType': 'In a Courtyard',
      'imgType': 'img/rain.png',
      'subType': 'Meditation',
    },
    {
      'nameU': 'Dara',
      'AvatarU': 'img/hoa.png',
      'feelings':
          'When I listen to mediation, I understand that even ordinary thing has something special if you bring a curious mind to it',
      'nameType': 'Curiosity',
      'imgType': 'img/mua.png',
      'subType': 'Meditation',
    },
    {
      'nameU': 'Blade Runner',
      'AvatarU': 'img/hoa.png',
      'feelings':
          'I love this music. I fall asleep with it every night. Thats a great cyber city song',
      'nameType': 'Performance',
      'imgType': 'img/rain.png',
      'subType': 'Meditation',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // height: MediaQuery.of(context).size.height,
        // width:MediaQuery.of(context).size.width ,
        child: Column(
          children: [
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
                            Text('Single Practice',
                                style: TextStyle(fontSize: 15, color: text)),
                            Text(
                              'Slow down, energy up',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.white54),
                            ),
                          ],
                        ),
                        Text(
                          'More',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
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
                      children: exploreTypes
                          .map((type) => ExploreType(
                              Img_ex: type['Img'],
                              Name_ex: type['Name'],
                              Time_ex: type['Time']))
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
                            Text('Meditation Series',
                                style: TextStyle(fontSize: 15, color: text)),
                            Text(
                              'Dive deeper into meditation',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.white54),
                            ),
                          ],
                        ),
                        Text(
                          'More',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
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
                      children: exploreTypes_1
                          .map((type) => ExploreType(
                              Img_ex: type['Img'],
                              Name_ex: type['Name'],
                              Time_ex: type['Time']))
                          .toList(),
                    ),
                  ))
                ],
              ),
            ),
            Container(
              height: 200,
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
                            Text('Selected Mix',
                                style: TextStyle(fontSize: 15, color: text)),
                            Text(
                              'Enjoy yourself in the mixed Sound Scape',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.white54),
                            ),
                          ],
                        ),
                        Text(
                          'More',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
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
                      children: selected_mix
                          .map((type) => MixandSound_type(
                                Img_MS: type['Img'],
                                Name_MS: type['Name'],
                              ))
                          .toList(),
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
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
                            Text('Selected Sound',
                                style: TextStyle(fontSize: 15, color: text)),
                            Text(
                              'Enjoy yourself in the mixed Sound Scape',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.white54),
                            ),
                          ],
                        ),
                        Text(
                          'More',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
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
                      children: selected_sound
                          .map((type) => MixandSound_type(
                                Img_MS: type['Img'],
                                Name_MS: type['Name'],
                              ))
                          .toList(),
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
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
                            Text('Selected Story',
                                style: TextStyle(fontSize: 15, color: text)),
                            Text(
                              'Stay focus, sleep better',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.white54),
                            ),
                          ],
                        ),
                        Text(
                          'More',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
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
                      children: selected_story
                          .map((type) => Story_type(
                              Img_S: type['Img'],
                              Name_S: type['Name'],
                              tell_yourself: type['Tell_yourself']))
                          .toList(),
                    ),
                  ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('For you',
                        style: TextStyle(color: text, fontSize: 18)),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: ListView(
                shrinkWrap: true,
                children: forYou
                    .map((type) => Foryou_Type(
                          NameU: type['nameU'],
                          AvatarU: type['AvatarU'],
                          Feelings: type["feelings"],
                          ImgType: type['imgType'],
                          NameType: type['nameType'],
                          SubT: type['subType'],
                        ))
                    .toList(),
              ),
            ),
            SizedBox(
              height: 200,
            ),

          ],
        ),
      ),
    );
  }
}
