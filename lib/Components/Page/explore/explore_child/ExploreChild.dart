import 'package:flutter/material.dart';
import 'package:tide/Components/Page/explore/explore_child/exploretypes/ForyouType.dart';
import 'package:tide/Components/Page/explore/explore_child/exploretypes/SPvsMSType.dart';
import 'package:tide/Components/Page/explore/explore_child/exploretypes/SelectedMixvsSoundType.dart';
import 'package:tide/Components/Page/explore/explore_child/exploretypes/SelectedStoryType.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ExploreChild extends StatelessWidget {
  final CollectionReference _cardsSM =
      FirebaseFirestore.instance.collection('cardH');
  final CollectionReference _cardsFY =
      FirebaseFirestore.instance.collection('foryou');

  DocumentSnapshot? documentSnapshot;

  static const Color text = Color(0xFFFFFFFF);

  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Container(
        margin: EdgeInsets.only(top: 10),
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
                            style:
                                TextStyle(fontSize: 10, color: Colors.white54),
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
                    child: StreamBuilder(
                        stream: _cardsSM.snapshots(),
                        builder: (context,
                            AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                          if (streamSnapshot.hasData) {
                            final cardDocs = streamSnapshot.data!.docs;
                            return Container(
                              height: 230,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: cardDocs
                                    .map((type) => SmvsMSType(
                                        Img_SM: type['img'],
                                        Name_SM: type['name'],
                                        Time_SM: type['time']))
                                    .toList(),
                              ),
                            );
                          }
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }))
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
                            style:
                                TextStyle(fontSize: 10, color: Colors.white54),
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
                    child: StreamBuilder(
                        stream: _cardsSM.snapshots(),
                        builder: (context,
                            AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                          if (streamSnapshot.hasData) {
                            final cardDocs = streamSnapshot.data!.docs;
                            return Container(
                              height: 230,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: cardDocs
                                    .map((type) => SmvsMSType(
                                        Img_SM: type['img'],
                                        Name_SM: type['name'],
                                        Time_SM: type['time']))
                                    .toList(),
                              ),
                            );
                          }
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }))
              ],
            ),
          ),
          //!Selected Mix
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
                          Text('Selected Mix',
                              style: TextStyle(fontSize: 15, color: text)),
                          Text(
                            'Enjoy yourself in the mixed Sound Scape',
                            style:
                                TextStyle(fontSize: 10, color: Colors.white54),
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
                    child: StreamBuilder(
                        stream: _cardsSM.snapshots(),
                        builder: (context,
                            AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                          if (streamSnapshot.hasData) {
                            final cardDocs = streamSnapshot.data!.docs;
                            return Container(
                              height: 230,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: cardDocs
                                    .map((type) => MixvsSoundType(
                                          Img_MS: type['img'],
                                          Name_MS: type['name'],
                                        ))
                                    .toList(),
                              ),
                            );
                          }
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }))
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
                            style:
                                TextStyle(fontSize: 10, color: Colors.white54),
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
                    child: StreamBuilder(
                        stream: _cardsSM.snapshots(),
                        builder: (context,
                            AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                          if (streamSnapshot.hasData) {
                            final cardDocs = streamSnapshot.data!.docs;
                            return Container(
                              height: 230,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: cardDocs
                                    .map((type) => MixvsSoundType(
                                          Img_MS: type['img'],
                                          Name_MS: type['name'],
                                        ))
                                    .toList(),
                              ),
                            );
                          }
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }))
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
                            style:
                                TextStyle(fontSize: 10, color: Colors.white54),
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
                    child: StreamBuilder(
                        stream: _cardsSM.snapshots(),
                        builder: (context,
                            AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                          if (streamSnapshot.hasData) {
                            final cardDocs = streamSnapshot.data!.docs;
                            return Container(
                              height: 230,
                              child: ListView(
                                
                                scrollDirection: Axis.horizontal,
                                children: cardDocs
                                    .map((type) => SoundType(
                                          Img_S: type['img'],
                                          Name_S: type['name'],
                                          Tell_yourself: type['tellyourself'],
                                        ))
                                    .toList(),
                              ),
                            );
                          }
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }))
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
              child: StreamBuilder(
                  stream: _cardsFY.snapshots(),
                  builder:
                      (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    if (streamSnapshot.hasData) {
                      final cardDocs = streamSnapshot.data!.docs;
                      return Container(
                        child: ListView(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: cardDocs
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
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  })),
        ]),
      ),
    );
  }
}
