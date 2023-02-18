import 'package:flutter/material.dart';
import 'package:tide/Components/Page/explore/explore_child/exploretypes/ForyouType.dart';
import 'package:tide/Components/Page/explore/explore_child/exploretypes/SPvsMSType.dart';
import 'package:tide/Components/Page/explore/explore_child/exploretypes/SelectedMixvsSoundType.dart';
import 'package:tide/Components/Page/explore/explore_child/exploretypes/SelectedStoryType.dart';
class ExploreChild extends StatelessWidget {
  static const Color text = Color(0xFFFFFFFF);
  List<Map<String, dynamic>> SinglePractice_type = [
    {'Img': 'images/imageshomes/mua.png', 'Name': 'Commuting', 'Time': '5 MIN - SINGLES'},
    {'Img': 'images/imageshomes/nang.png', 'Name': 'Confidence', 'Time': '5-10 MIN - SINGLES'},
    {
      'Img': 'images/imageshomes/hoa.png',
      'Name': 'Work Burnout',
      'Time': '5-10 MIN - SINGLES'
    },
    {
      'Img': 'images/imageshomes/cay.png',
      'Name': 'Before Class',
      'Time': '5-10 MIN - SINGLES'
    },
    {
      'Img': 'images/imageshomes/nhai.png',
      'Name': 'Boredom',
      'Time': '5-10 MIN - SINGLES'
    },
    {'Img': 'images/imageshomes/sun.png', 'Name': 'Inspiration', 'Time': '15 MIN - SINGLES'},
  ];
   List<Map<String, dynamic>> MeditationS_type = [
    {'Img': 'images/imageshomes/tra.png', 'Name': 'Productivity',
      'Time': '5 Sessions-SERIES'},
    {'Img': 'images/imageshomes/nen.png', 'Name': 'Effective Communication',
      'Time': '6 Sessions-SERIES'},
    {
      'Img': 'images/imageshomes/hoa.png',
      'Name': 'Coping with Stress',
      'Time': '5 Sessions-SERIES'
    },
    {
      'Img': 'images/imageshomes/cay.png',
      'Name': 'Happiness', 'Time': '5 Sessions-SERIES'
    },
    {
      'Img': 'images/imageshomes/hoanghon.png',
      'Name': 'Intimate Relationship',
      'Time': '5 Sessions-SERIES'
    },
    {'Img': 'images/imageshomes/sun.png', 'Name': 'Fantasyland', 'Time': '8 Sessions-SERIES'},
  ];
  List<Map<String, dynamic>> selected_mix = [
    {
      'Img': 'images/imagesMeditaion/da.png',
      'Name': 'Fireworks at Sea',
    },
    {
      'Img': 'images/imageshomes/hoa.png',
      'Name': 'Through the Forest',
    },
    {
      'Img': 'images/imageshomes/hoa.png',
      'Name': 'Snowy Cabin',
    },
    {
      'Img': 'images/imageshomes/hoa.png',
      'Name': 'Raniy Night',
    },
    {
      'Img': 'images/imageshomes/hoa.png',
      'Name': 'Creative Cafe',
    },
    {
      'Img': 'images/imageshomes/hoa.png',
      'Name': 'Pine Streams',
    },
  ];
   List<Map<String, dynamic>> selected_sound = [
    {
      'Img': 'images/imagesMeditaion/da.png',
      'Name': 'Realm of Softness',
    },
    {
      'Img': 'images/imageshomes/hoa.png',
      'Name': 'Realm of Softness',
    },
    {
      'Img': 'images/imageshomes/hoa.png',
      'Name': 'Realm of Softness',
    },
    {
      'Img': 'images/imageshomes/hoa.png',
      'Name': 'Wind',
    },
    {
      'Img': 'images/imageshomes/hoa.png',
      'Name': 'Valley',
    },
    {
      'Img': 'images/imageshomes/hoa.png',
      'Name': 'Deep Sea',
    },
  ];

  List<Map<String, dynamic>> selected_story = [
    {
      'Img': 'images/imageshomes/song.png',
      'Name': 'Performance',
      'Tell_yourself': 'How to Make Learning Easier?',
    },
    {
     'Img': 'images/imageshomes/hoa.png',
      'Name': 'Sleep',
      'Tell_yourself': 'Four Ways to Have a Good Sleep',
    },
    {
      'Img': 'images/imageshomes/hoa.png',
      'Name': 'Nap',
      'Tell_yourself': 'never give up',
    },
  ];
  List<Map<String, dynamic>> forYou = [
    {
      'nameU': 'Jenny_sun',
      'AvatarU': 'images/imageshomes/nen.png',
      'nameType': 'Rainy Parking',
      'feelings':
          'Thanks to TIde, I can go to bed with my favorite sound, as ì raindrops were falling on the cars and falling into my dreams',
      'imgType': 'images/imageshomes/nang.png',
      'subType': 'sound',
    },
    {
      'nameU': 'Natalie-',
      'AvatarU': 'images/imageshomes/binhminh.png',
      'feelings':
          'From the first my dad took me to see science fiction, I started to love the universe. The moment I closed my eyes listening to the,sound I fleets..',
      'nameType': 'Spacewalk',
      'imgType': 'images/imageshomes/hoanghon.png',
      'subType': 'Meditation',
    },
    {
      'nameU': 'Jasmine167',
      'AvatarU': 'images/imageshomes/hoa.png',
      'feelings':
          'The sound made me remember my childhood, my grandma used to like take me to the temple, Those memories are very important to me.And.',
      'nameType': 'In a Courtyard',
      'imgType': 'images/imageshomes/hoa.png',
      'subType': 'Meditation',
    },
    {
      'nameU': 'Minion',
      'AvatarU': 'images/imageshomes/nhai.png',
      'feelings':
          'When I listen to mediation, I understand that even ordinary thing has something special if you bring a curious mind to it',
      'nameType': 'Curiosity',
      'imgType': 'images/imageshomes/mua.png',
      'subType': 'Meditation',
    },
    {
      'nameU': 'Blade Runner',
      'AvatarU': 'images/imageshomes/cay.png',
      'feelings':
          'I love this music. I fall asleep with it every night. Thats a great cyber city song',
      'nameType': 'Performance',
      'imgType': 'images/imageshomes/hoa.png',
      'subType': 'Meditation',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            //!Single Practice
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
                      children: SinglePractice_type
                          .map((type) => SmvsMSType(
                              Img_SM: type['Img'],
                              Name_SM: type['Name'],
                              Time_SM: type['Time']))
                          .toList(),
                    ),
                  ))
                ],
              ),
            ),
            //!Meditation Series
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
                      children: MeditationS_type
                          .map((type) => SmvsMSType(
                              Img_SM: type['Img'],
                              Name_SM: type['Name'],
                              Time_SM: type['Time']))
                          .toList(),
                    ),
                  ))
                ],
              ),
            ),

            //!Selected Mix
            Container(
              margin: EdgeInsets.only(top: 50),
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
                          .map((type) => MixvsSoundType(
                                Img_MS: type['Img'],
                                Name_MS: type['Name'],
                              ))
                          .toList(),
                    ),
                  ))
                ],
              ),
            ),
            //!Selected Sound
            Container(
              margin: EdgeInsets.only(top: 20),
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
                              'Stay caim wwith nature',
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
                          .map((type) => MixvsSoundType(
                                Img_MS: type['Img'],
                                Name_MS: type['Name'],
                              ))
                          .toList(),
                    ),
                  ))
                ],
              ),
            ),

          //! Selected Story
           Container(
              height: 300,
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
                          .map((type) => SoundType(
                              Img_S: type['Img'],
                              Name_S: type['Name'],
                              Tell_yourself: type['Tell_yourself']))
                          .toList(),
                    ),
                  ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 15,
                right: 15,
              ),
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
          //! For you
            Container(
              margin: EdgeInsets.only(left: 15),
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
                    .map((type) => ForyouType(
                          NameU: type['nameU'],
                          AvatarU: type['AvatarU'],
                          FeelingsU: type["feelings"],
                          ImgTypeU: type['imgType'],
                          NameTypeU: type['nameType'],
                          SubTU: type['subType'],
                        ))
                    .toList(),
              ),
            ),

          ]
          ),
      ),
    );
  }
}