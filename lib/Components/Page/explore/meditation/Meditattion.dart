import 'package:flutter/material.dart';
import 'package:tide/Components/Page/explore/meditation/meditation_child/AllMeditation.dart';
import 'package:tide/Components/Page/explore/meditation/meditation_child/SeriesMeditation.dart';
import 'package:tide/Components/Page/explore/meditation/meditation_child/SleepMeditation.dart';
import 'package:tide/Components/Page/explore/meditation/meditation_child/StressMeditation.dart';
class Meditation extends StatefulWidget {
  const Meditation({super.key});

  @override
  State<Meditation> createState() => _MeditationState();
}

class _MeditationState extends State<Meditation>with TickerProviderStateMixin {
  late TabController _MtabController;
  @override
  void initState() {
    super.initState();
    _MtabController = TabController(length: 8, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        
        children: [
          Container(
            // margin: EdgeInsets.only(top: ),
            child: Align(
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3,
                isScrollable: true,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.blueGrey,
                padding: EdgeInsets.only(left: 20,top:5,right: 5,bottom: 5),
                controller: _MtabController,
                indicator: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                tabs: [
                  Text('All', style: TextStyle(fontSize: 13,)),
                  Text('Series', style: TextStyle(fontSize: 13)),
                  Text('Sleep', style: TextStyle(fontSize: 13)),
                  Text('Stress', style: TextStyle(fontSize: 13)),
                  Text('Beginner', style: TextStyle(fontSize: 13)),
                  Text('Performance', style: TextStyle(fontSize: 13)),
                  Text('Emotions', style: TextStyle(fontSize: 13)),
                  Text('Daytime', style: TextStyle(fontSize: 13)),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                controller: _MtabController,
                children: [
                 AllMeditation(),
                 SeriesFM(),
                 SleepFM(),
                 StressFM(),
                 AllMeditation(),
                 AllMeditation(),
                 AllMeditation(),
                 AllMeditation(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}