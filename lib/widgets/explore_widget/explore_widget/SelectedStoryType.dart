import 'package:flutter/material.dart';

class SoundType extends StatelessWidget {
  final String Img_S;
  final String Name_S;
  final String Tell_yourself;

  const SoundType({Key? key, required this.Img_S, required this.Name_S, required this.Tell_yourself})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Padding(
        padding: const EdgeInsets.only(left: 15),
        child: SizedBox(
          width: 300,
          height: 300,
          child: Card(
            elevation: 0,
            color: Colors.transparent,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: InkWell(
              onTap: () => print('test'),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                      child: Image.network(
                        Img_S,
                        height: 250,
                        fit: BoxFit.fill,
                        width: 300,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(Name_S,style: const TextStyle(color: Colors.grey,fontSize: 10),),
                    subtitle: Text(Tell_yourself,style: const TextStyle(color: Colors.white,fontSize: 14)),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}