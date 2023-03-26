
import 'package:flutter/material.dart';

class SignInMore extends StatelessWidget {

  final void Function()? onTap;
  final IconData  Icontype;
  final Color backgoundColor;
  final Color iconColor;

  const SignInMore({
    Key? key,
    required this.Icontype,
    required this.onTap,
    required this.backgoundColor,
    required this.iconColor,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: backgoundColor,
      child: IconButton(
        icon: Icon(
          Icontype,
          color: iconColor,
          size: 15,
        ),
        onPressed: (){},
      ),
    );
  }
}
