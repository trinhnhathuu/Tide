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
        padding: EdgeInsets.only(left: 0),
        child: Container(
          
          width: 150,
          height: 220,
          child: Card(
            elevation: 0,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: InkWell(
              onTap: () => print('test'),
              child: Column(
               
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    // Container(
                    //   width: 50,
                    //   height: 20,
                    //   color: Colors.greenAccent,
                    //   child: Text('free'),
                    // ),
                  Expanded(
                    child: ClipRRect(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      child: Image.asset(
                        ImageM,
                        height: 150,
                        fit: BoxFit.fill,
                        width: 150,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 15),
                    title: Text(
                      TitleM,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(DescriptionM,
                        style: TextStyle(color: Colors.grey, fontSize: 10)),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
