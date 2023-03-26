// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tide/widgets/explore_widget/meditation_widget/MeditaionType.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AllMeditation extends StatelessWidget {
  final CollectionReference _allmeditaion =
      FirebaseFirestore.instance.collection('meditation');

   AllMeditation({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(bottom: 100),
        width: 150,
        child: StreamBuilder(
            stream: _allmeditaion.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              if (streamSnapshot.hasData) {
                final cardDos = streamSnapshot.data!.docs;
                return SizedBox(
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
                          data.containsKey('id_type')) {
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
                        return const SizedBox();
                      }
                    }).toList(),
                  ),
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }))
    );
  }
}
