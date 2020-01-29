
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
///////////////////////////////////////////////////////////////////////////////
class Monday extends StatefulWidget {
  @override
  _MondayState createState() => _MondayState();
}

class _MondayState extends State<Monday> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: Firestore.instance.collection('monday').snapshots(),
        builder: (context,snapshot){
          if(!snapshot.hasData)
            return Text("loading ....Please Wait...");
          else{
            return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder:(context,index){
                  DocumentSnapshot myMonday=snapshot.data.documents[index];
                  return Stack(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text("${myMonday['header']}", style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[800],
                            ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break1']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),
                                ),
                              ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break2']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),),

                              ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break3']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),),

                              ),
                            ),

                          ],
                        ),

                      ),
                    ],
                  );
                }

            );
          }
        },
      ),
    );
    }
      }
/////////////////////////////////////////////////////////////////////////////////


class Tuesday extends StatefulWidget {
  @override
  _TuesdayState createState() => _TuesdayState();
}

class _TuesdayState extends State<Tuesday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: Firestore.instance.collection('tuesday').snapshots(),
        builder: (context,snapshot){
          if(!snapshot.hasData)
            return Text("Loading ....Please Wait...");
          else{
            return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder:(context,index){
                  DocumentSnapshot myMonday=snapshot.data.documents[index];
                  return Stack(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text("${myMonday['header']}", style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[800],
                            ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break1']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),
                                ),
                              ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break2']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),),

                              ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break3']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),),

                              ),
                            ),
                          ],
                        ),

                      ),
                    ],
                  );
                }

            );
          }
        },
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////
class Wednesday extends StatefulWidget {
  @override
  _WednesdayState createState() => _WednesdayState();
}

class _WednesdayState extends State<Wednesday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: Firestore.instance.collection('wednesday').snapshots(),
        builder: (context,snapshot){
          if(!snapshot.hasData)
            return Text("loading ....Please Wait...");
          else{
            return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder:(context,index){
                  DocumentSnapshot myMonday=snapshot.data.documents[index];
                  return Stack(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text("${myMonday['header']}", style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[800],
                            ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break1']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),
                                ),
                              ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break2']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),),

                              ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break3']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),),

                              ),
                            ),
                          ],
                        ),

                      ),
                    ],
                  );
                }

            );
          }
        },
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////
class Thursday extends StatefulWidget {
  @override
  _ThursdayState createState() => _ThursdayState();
}

class _ThursdayState extends State<Thursday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: Firestore.instance.collection('thursday').snapshots(),
        builder: (context,snapshot){
          if(!snapshot.hasData)
            return Text("loading ....Please Wait...");
          else{
            return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder:(context,index){
                  DocumentSnapshot myMonday=snapshot.data.documents[index];
                  return Stack(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text("${myMonday['header']}", style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[800],
                            ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break1']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),
                                ),
                              ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break2']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),),

                              ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break3']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),),

                              ),
                            ),
                          ],
                        ),

                      ),
                    ],
                  );
                }

            );
          }
        },
      ),
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////
class Friday extends StatefulWidget {
  @override
  _FridayState createState() => _FridayState();
}

class _FridayState extends State<Friday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: Firestore.instance.collection('friday').snapshots(),
        builder: (context,snapshot){
          if(!snapshot.hasData)
            return Text("loading ....Please Wait...");
          else{
            return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder:(context,index){
                  DocumentSnapshot myMonday=snapshot.data.documents[index];
                  return Stack(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text("${myMonday['header']}", style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[800],
                            ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break1']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),
                                ),
                              ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break2']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),),

                              ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break3']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),),

                              ),
                            ),
                          ],
                        ),

                      ),
                    ],
                  );
                }

            );
          }
        },
      ),
    );
  }
}
/////////////////////////////////////////////////////////////////////////////////
class Saturday extends StatefulWidget {
  @override
  _SaturdayState createState() => _SaturdayState();
}

class _SaturdayState extends State<Saturday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: Firestore.instance.collection('saturday').snapshots(),
        builder: (context,snapshot){
          if(!snapshot.hasData)
            return Text("loading ....Please Wait...");
          else{
            return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder:(context,index){
                  DocumentSnapshot myMonday=snapshot.data.documents[index];
                  return Stack(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text("${myMonday['header']}", style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[800],
                            ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break1']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),
                                ),
                              ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break2']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),),

                              ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break3']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),),

                              ),
                            ),
                          ],
                        ),

                      ),
                    ],
                  );
                }

            );
          }
        },
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////////
class Sunday extends StatefulWidget {
  @override
  _SundayState createState() => _SundayState();
}

class _SundayState extends State<Sunday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: Firestore.instance.collection('sunday').snapshots(),
        builder: (context,snapshot){
          if(!snapshot.hasData)
            return Text("loading ....Please Wait...");
          else{
            return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder:(context,index){
                  DocumentSnapshot myMonday=snapshot.data.documents[index];
                  return Stack(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text("${myMonday['header']}", style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[800],
                            ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break1']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),
                                ),
                              ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break2']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),),

                              ),
                            ),
                            Container(
                              child: ListTile(

                                title: Text("${myMonday['break3']}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                ),),

                              ),
                            ),
                          ],
                        ),

                      ),
                    ],
                  );
                }

            );
          }
        },
      ),
    );
  }
}
