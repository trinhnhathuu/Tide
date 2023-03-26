import 'package:flutter/material.dart';
import '../explore/ExploreChild.dart';
import 'package:tide/views/explore/meditation/Meditation.dart';
import 'package:tide/views/explore/sleep/Sleep.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Expanded(
                      child: TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorWeight: 2.0,
                        indicatorColor: Colors.red,
                        isScrollable: true,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.blueGrey,
                        padding: const EdgeInsets.all(6.0),
                        controller: _tabController,
                        tabs: const [
                          Text('Explore', style: TextStyle(fontSize: 18)),
                          Text('Meditation', style: TextStyle(fontSize: 18)),
                          Text('Sleep', style: TextStyle(fontSize: 18)),
                          Text('Sound', style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                      ),
                    )
                  ],
                )),
          ),
          Container(
            color: Colors.black,
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height * 2,
            child: TabBarView(
              controller: _tabController,
              children: [
                ExploreChild(),
                const Meditation(),
                const Sleep(),
                ExploreChild(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
