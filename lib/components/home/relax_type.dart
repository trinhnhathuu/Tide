import 'package:flutter/material.dart';

class Relax_type extends StatelessWidget {
  final String Img;
  final String Name;
  final String Time;


  Relax_type({
    required this.Img,
    required this.Name,
    required this.Time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15),
        child: Container(
          width: 150,
          height: 200,
          child: Card(
            elevation: 0,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: InkWell(
              onTap: () => print('test'),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      child: Image.asset(
                        Img,
                        height: 150,
                        fit: BoxFit.fill,
                        width: 150,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(Name,style: TextStyle(color: Colors.white,),),
                    subtitle: Text(Time,style: TextStyle(color: Colors.white,fontSize: 10)),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
