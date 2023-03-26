import 'package:flutter/material.dart';

class Chose extends StatelessWidget {
  final IconData icon;
  final String text;
  const Chose({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
       CircleAvatar(
                        key: const Key('avatar'),
                        radius: 25,
                        backgroundColor: Colors.white24,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                           icon,
                            color: const Color.fromARGB(255, 95, 93, 93),
                            size: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                      text ,
                        style: const TextStyle(color: Colors.white),
                      ),
    ]);
  }
}