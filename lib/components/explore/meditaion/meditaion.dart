import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tide/components/explore/meditaion/child/all_meditaion.dart';

class MediationEx extends StatefulWidget {
  const MediationEx({Key? key}) : super(key: key);

  @override
  State<MediationEx> createState() => _MediationExState();
}

class _MediationExState extends State<MediationEx>
    with TickerProviderStateMixin {
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
                  Text('All', style: TextStyle(fontSize: 10,)),
                  Text('Series', style: TextStyle(fontSize: 10)),
                  Text('Sleep', style: TextStyle(fontSize: 10)),
                  Text('Stress', style: TextStyle(fontSize: 10)),
                  Text('Beginner', style: TextStyle(fontSize: 10)),
                  Text('Performance', style: TextStyle(fontSize: 10)),
                  Text('Emotions', style: TextStyle(fontSize: 10)),
                  Text('Daytime', style: TextStyle(fontSize: 10)),
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
                  AllMeditaioin(),
                  AllMeditaioin(),
                  AllMeditaioin(),
                  AllMeditaioin(),
                  AllMeditaioin(),
                  AllMeditaioin(),
                  AllMeditaioin(),
                  AllMeditaioin(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
