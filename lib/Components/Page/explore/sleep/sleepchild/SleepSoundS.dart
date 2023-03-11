import 'package:flutter/material.dart';
import 'package:tide/Components/Page/explore/sleep/sleeptype/SoundscapesType.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SleepSoundS extends StatelessWidget {
  final CollectionReference _sleepSS =
      FirebaseFirestore.instance.collection('sleepEx');
  DocumentSnapshot? documentSnapshot;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 25),
      width: 150,
      child: Builder(
        builder: (context) {
          return Builder(
            builder: (context) {
              return StreamBuilder(
                stream: _sleepSS.snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapShot) {
                  if (streamSnapShot.hasData) {
                    final cardDocs = streamSnapShot.data!.docs;
                    return Container(
                      child: Wrap(
                        spacing: 5,
                        runSpacing: 5,
                        children: cardDocs
                            .map((type) => SoundscapesType(
                                NameSS: type['name'],
                                ImgSS: type['img'],
                                NumberOfPepole: type['listeners']))
                            .toList(),
                      ),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              );
            }
          );
        }
      ),
    );
  }
}
