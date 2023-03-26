import 'package:flutter/material.dart';

class MixvsSoundType extends StatelessWidget {
  final String Img_MS;
  final String Name_MS;

  const MixvsSoundType({Key? key, required this.Img_MS, required this.Name_MS})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 15),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 Expanded(
                   child:  Container(
                     margin: const EdgeInsets.only(top:20),
                     child: ClipRRect(
                       borderRadius: const BorderRadius.all(Radius.circular(100.0)),
                       child: Image.network(
                         Img_MS,
                         height: 80,
                         fit: BoxFit.fill,
                         width: 80,
                       ),
                     ),
                   ),
                 ),
                  ListTile(
                    // contentPadding: EdgeInsets.zero,
                    title: Text(Name_MS,style: const TextStyle(color: Colors.grey,fontSize: 12),),
                    // subtitle: Text(Time_MS,style: TextStyle(color: Colors.white,fontSize: 10)),
                  ),

                ],
              ),
            ),
          ),
        ));
  }
}
