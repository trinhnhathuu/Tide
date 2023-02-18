import 'package:flutter/material.dart';
import 'package:tide/Components/Page/explore/sleep/sleepchild/SleepSoundS.dart';
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
    return Container(
      child: Column(
        children: [
          Container(
            child: Align(
              alignment: Alignment.center,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                controller: _StabController,
                indicatorWeight: 3,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.blueGrey,
                padding: EdgeInsets.only(left: 20,top:5,right: 5,bottom: 5),
                indicator: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                tabs: [
                  Text('Fall asleep meditations',style: TextStyle(fontSize: 12,)),
                  Text('Fall asleep soundcapes',style: TextStyle(fontSize: 12,))
                ],
              ),
            ),
          ),
          Expanded(child: Container(
            child: TabBarView(
              controller: _StabController,
              children: [
                Text('chao cac banj',style: TextStyle(color: Colors.white),),
                SleepSoundS(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}