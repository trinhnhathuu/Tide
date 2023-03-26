import 'package:flutter/material.dart';

class ForyouType extends StatelessWidget {
  
  // ignore: non_constant_identifier_names
  final String NameU;
  final String AvatarU;
  final String ImgTypeU;
  final String NameTypeU;
  final String SubTU;
  final String FeelingsU;

  const ForyouType({Key? key, required this.NameU, required this.AvatarU, required this.ImgTypeU, required this.NameTypeU, required this.SubTU, required this.FeelingsU}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 15,top: 15,right: 15),
        child: SizedBox(

          width: 150,
          height: 200,
          child: Card(
            elevation: 0,
            color: Colors.white12,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: InkWell(
              onTap: () => print('test'),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10,left: 20,right: 20),
                        width: 20,
                        height: 20,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                          child: Image.network(
                            AvatarU,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(NameU,style: const TextStyle(color: Colors.white),)
                    ],
                  ),
                  Expanded(
                    child: Container(
                        decoration: const BoxDecoration(
                        ),
                        margin: const EdgeInsets.only(top: 15,right:20,left: 20),
                        child:
                            Text(
                              FeelingsU,
                              textDirection: TextDirection.ltr,
                              softWrap: true,
                            style: const TextStyle(color: Colors.white),)

                        ),),
                  Container(
                    margin: const EdgeInsets.only(left:20,right:20,),
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey,
                  ),
                  ListTile(
                    // contentPadding: EdgeInsets.zero,
                    leading: SizedBox(
                      width: 50,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                        child: Image.network(
                          ImgTypeU,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      NameTypeU,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    subtitle: Text(SubTU,style: const TextStyle(color: Colors.grey,fontSize: 10)),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}