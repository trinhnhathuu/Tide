import 'package:flutter/material.dart';
import 'package:tide/Components/Page/explore/explore_child/ExploreChild.dart';
import 'package:tide/Components/Page/explore/meditation/Meditattion.dart';
import 'package:tide/Components/Page/explore/sleep/Sleep.dart';

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
            margin: EdgeInsets.only(top: 20),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Expanded(
                      child: TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorWeight: 5.0,
                        indicatorColor: Colors.red,
                        isScrollable: true,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.blueGrey,
                        padding: EdgeInsets.all(10.0),
                        controller: _tabController,
                        tabs: [
                          Text('Explore', style: TextStyle(fontSize: 18)),
                          Text('Meditation', style: TextStyle(fontSize: 18)),
                          Text('Sleep', style: TextStyle(fontSize: 18)),
                          Text('Sound', style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                    Container(
                      width: 50,
                      child: Icon(Icons.search_outlined,color: Colors.white,),
                    )
                  ],
                )),
          ),
          Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
              controller: _tabController,
              children: [
                ExploreChild(),
                Meditation(),
                Sleep(),
                Text('chào các bạn G'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
