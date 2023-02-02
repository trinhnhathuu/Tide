import 'package:flutter/material.dart';
class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: ()=>{
          Navigator.pop(context)
        },
        child: Text('quai lại'),
      ),
    );
  }
}
