
import 'package:flutter/material.dart';

class SignInBtn extends StatelessWidget {
  final String iconPath;
  final String textLabel;
  final Color backgroundColor;
  final void Function()? onTap;


  const SignInBtn({
    Key ? key,
   required this.backgroundColor,
   required this.textLabel,
   required this.iconPath,
   required this.onTap,
}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          // shape: const StadiumBorder(),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 4,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  iconPath,
                ),
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 14,
              ),
              Text(
                textLabel,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
