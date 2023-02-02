import 'package:flutter/material.dart';
class Story_type extends StatelessWidget {
  final String Img_S;
  final String Name_S;
  final String tell_yourself;

  Story_type({
    required this.Img_S,
    required this.Name_S,
    required this.tell_yourself,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15),
        child: Container(
          width: 250,
          height: 200,
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
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      child: Image.asset(
                        Img_S,
                        height: 150,
                        fit: BoxFit.fill,
                        width: 250,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(Name_S,style: TextStyle(color: Colors.grey,fontSize: 10),),
                    subtitle: Text(tell_yourself,style: TextStyle(color: Colors.white,fontSize: 14)),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
