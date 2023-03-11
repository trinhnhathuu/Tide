import 'package:flutter/material.dart';
import 'package:tide/Components/Page/explore/meditation/meditationType/MeditaionType.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class StressFM extends StatelessWidget {
  
  final CollectionReference _stressFM =
      FirebaseFirestore.instance.collection('meditation');
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        child: StreamBuilder(
            stream: _stressFM.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              if (streamSnapshot.hasData) {
                final cardDos = streamSnapshot.data!.docs;
                return Container(
                  height: 250,
                  child: Wrap(
                    spacing: 2, // Khoảng cách giữa các item
                    runSpacing: 5, // Khoảng cách giữa các dòng
                    children: cardDos.map((type) {
                      Map<String, dynamic> data =
                          type.data() as Map<String, dynamic>;
                      if (data.containsKey('img') &&
                          data.containsKey('name') &&
                          data.containsKey('time') &&
                          data.containsKey('id_type')&&
                          data['id_type']!='sleep') {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width / 2 -
                              15, // chia đôi chiều rộng
                          child: MeditationType(
                            ImageM: data['img'],
                            TitleM: data['name'],
                            DescriptionM: data['time'],
                          ),
                        );
                      } else {
                        return SizedBox();
                      }
                    }).toList(),
                  ),
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            })
    );
  }
}