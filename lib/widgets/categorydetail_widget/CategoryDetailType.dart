import 'package:flutter/material.dart';

class CategoryDetailType extends StatelessWidget {
  const CategoryDetailType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.close),
      ) ,
    );
  }
}