import 'package:flutter/material.dart';

class MeditationType extends StatelessWidget {
  final String TitleM;
  final String DescriptionM;
  final String ImageM;

  MeditationType({
    required this.TitleM, 
    required this.DescriptionM,
    required this.ImageM,
    });

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Container(
          margin: const EdgeInsets.only(left: 10),
          width: 210,
          height: 230,
          child: Card(
            elevation: 0,
            color: Colors.transparent,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: InkWell(
              onTap: () => print('test'),
              child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                      child: Image.network(
                        ImageM,
                        height: 150,
                        fit: BoxFit.fill,
                        width: 200,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      TitleM,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(DescriptionM,
                        style: const TextStyle(color: Colors.grey, fontSize: 12)),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
