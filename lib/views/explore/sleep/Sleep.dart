import 'package:flutter/material.dart';

import 'package:tide/views/explore/sleep/SleepSoundS.dart';

import '../meditation/SleepMeditation.dart';
class Sleep extends StatefulWidget {
  const Sleep({super.key});

  @override
  State<Sleep> createState() => _SleepState();
}

class _SleepState extends State<Sleep>with TickerProviderStateMixin {
   late TabController _StabController;
  @override
  void initState() {
    super.initState();
    _StabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            controller: _StabController,
            indicatorWeight: 3,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.blueGrey,
            padding: const EdgeInsets.only(left: 20,top:5,right: 5,bottom: 5),
            indicator: BoxDecoration(
                color: const Color.fromARGB(118, 123, 124, 123),
                borderRadius: BorderRadius.circular(10.0)
            ),
            tabs: const [
              Text('Fall asleep meditations',style: TextStyle(fontSize: 12,)),
              Text('Fall asleep soundcapes',style: TextStyle(fontSize: 12,))
            ],
          ),
        ),
        Expanded(child: TabBarView(
          controller: _StabController,
          children: [
            SleepFM(),
            SleepSoundS(),
          ],
        ))
      ],
    );
  }
}