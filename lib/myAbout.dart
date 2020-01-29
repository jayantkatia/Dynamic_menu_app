import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('about').snapshots(),
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(""),
                            Text("${myMonday['header']}"),
                            Text("${myMonday['func1']}"),
                            Text("${myMonday['func2']}"),
                            Center(child: Image.network('${myMonday['img']}'),
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
      )
    );
  }
}
