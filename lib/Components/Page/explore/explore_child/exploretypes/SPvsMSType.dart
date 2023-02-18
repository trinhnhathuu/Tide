import 'package:flutter/material.dart';

class SmvsMSType extends StatelessWidget {
  final String Img_SM;
  final String Name_SM;
  final String Time_SM;

  const SmvsMSType(
      {Key? key,
      required this.Img_SM,
      required this.Name_SM,
      required this.Time_SM})
      : super(key: key);

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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      child: Image.asset(
                        Img_SM,
                        height: 150,
                        fit: BoxFit.fill,
                        width: 150,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      Name_SM,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(Time_SM,
                        style: TextStyle(color: Colors.grey, fontSize: 10)),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}