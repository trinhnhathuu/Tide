import 'package:flutter/material.dart';

import '../../../views/categoryDetails/CategoryDetail.dart';

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
 void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext content) {
          return  CategoryDetail(Name: Name_SM, Time: Time_SM,Img: Img_SM,);
        });
  }

 @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 15),
        child: SizedBox(
          width: 150,
          height: 200,
          child: Card(
            elevation: 0,
            color: Colors.transparent,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: InkWell(
              onTap: () => _showModalBottomSheet(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                      child:Image.network(
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
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(Time_SM,
                        style: const TextStyle(color: Colors.grey, fontSize: 10)),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}