import 'package:flutter/material.dart';

class Foryou_Type extends StatelessWidget {

  final String NameU;
  final String AvatarU;
  final String ImgType;
  final String NameType;
  final String SubT;
  final String Feelings;




  Foryou_Type({
    required this.NameU,
    required this.AvatarU,
    required this.ImgType,
    required this.NameType,
    required this.SubT,
    required this.Feelings,
});


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15,top: 15,right: 15),
        child: Container(

          width: 150,
          height: 200,
          child: Card(
            elevation: 0,
            color: Colors.white12,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: InkWell(
              onTap: () => print('test'),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                        width: 20,
                        height: 20,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Image.asset(
                            AvatarU,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(NameU,style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                        ),
                        margin: EdgeInsets.only(top: 15,right:20,left: 20),
                        child:
                            Text(
                              Feelings,
                              textDirection: TextDirection.ltr,
                              softWrap: true,
                            style: TextStyle(color: Colors.white),)

                        ),),
                  Container(
                    margin: EdgeInsets.only(left:20,right:20,),
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey,
                  ),
                  ListTile(
                    // contentPadding: EdgeInsets.zero,
                    leading: Container(
                      width: 50,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        child: Image.asset(
                          ImgType,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      NameType,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    subtitle: Text(SubT,style: TextStyle(color: Colors.grey,fontSize: 10)),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
