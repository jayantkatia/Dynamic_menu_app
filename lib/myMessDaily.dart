import 'package:flutter/material.dart';
import './myMenu.dart' as menu;


class MyMessDaily extends StatefulWidget {
  @override
  _MyMessDailyState createState() => _MyMessDailyState();
}

class _MyMessDailyState extends State<MyMessDaily> with TickerProviderStateMixin{
  TabController _tabController2;

  void initState(){
    super.initState();
    _tabController2=TabController(vsync: this,initialIndex: 0,length:7);
  }
  @override
  void dispose(){
    super.dispose();
    _tabController2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TabBar(
          controller: _tabController2,
          isScrollable: true,
          tabs: <Widget>[
            Tab(text: 'Mon'),
            Tab(text: 'Tues'),
            Tab(text: 'Wed'),
            Tab(text: 'Thurs'),
            Tab(text: 'Fri'),
            Tab(text: 'Sat'),
            Tab(text: 'Sun'),
          ],
        ),
        Container(
          height: screenHeight*.74,
          width: screenWidth,
          margin: EdgeInsets.only(left: 16.0,right: 16.0),
          child: TabBarView(
            controller: _tabController2,
            children: <Widget>[
              menu.Monday(),
              menu.Tuesday(),
              menu.Wednesday(),
              menu.Thursday(),
              menu.Friday(),
              menu.Saturday(),
              menu.Sunday(),





            ],
          ),
        ),
      ],
    );
  }
}
