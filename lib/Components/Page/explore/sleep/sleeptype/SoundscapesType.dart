import 'package:flutter/material.dart';

class SoundscapesType extends StatelessWidget {
  final String NameSS;
  final String ImgSS;
  final String NumberOfPepole;

  const SoundscapesType(
      {Key? key,
      required this.NameSS,
      required this.ImgSS,
      required this.NumberOfPepole})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.only(left: 0),
        child: Container(
          color: Colors.grey,
          width: 150,
          height: 300,
          child: Card(
            elevation: 0,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: InkWell(
              onTap: () => print('test'),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                 SizedBox(height: 50,),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      child: Image.asset(
                        ImgSS,
                        height: 150,
                        fit: BoxFit.fill,
                        width: 150,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 15,top:20),
                    title: Text(
                      NameSS,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(NumberOfPepole,
                        style: TextStyle(color: Colors.grey, fontSize: 10)),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}