import 'package:flutter/material.dart';
import 'package:tide/widgets/explore_widget/meditation_widget/MeditaionType.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class StressFM extends StatelessWidget {
  
  final CollectionReference _stressFM =
      FirebaseFirestore.instance.collection('meditation');

   StressFM({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 150,
        child: StreamBuilder(
            stream:  _stressFM.where('id_type', isNotEqualTo: 'sleep').snapshots(),
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
                          data.containsKey('time') ) {
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
            })
    );
  }
}