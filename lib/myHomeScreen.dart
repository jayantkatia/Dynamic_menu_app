import 'package:flutter/material.dart';
import './myMessDaily.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 0, length: 2);
  }
  @override
  void dispose(){
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Dynamic Mess Menu "),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.fastfood),
            onPressed: () {
              setState(() {
                Navigator.pushNamed(context, '/about');
              });
            },
            tooltip: "By Fireden",
          ),
        ],

      ),

      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          MyMessDaily(),

          Center(
            child: Text("Cos ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),),
          ),
        ],
      ),
      bottomNavigationBar: Material(

        child: TabBar(
          //isScrollable: true,

          controller: _tabController,
          tabs: <Widget>[
            Tab(
              child: Text("Mess"),
            ),
            Tab(
              child: Text("Cos"),
            ),
          ],

        ),
      ),

    );
  }
}
