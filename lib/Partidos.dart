import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(new PageTwo());

class PageTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Partidospage(),
    );
  }
}
class Partidospage extends StatefulWidget{
  @override
  _Partidospage createState() => new _Partidospage();
}      
class _Partidospage extends State<Partidospage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
    body: StreamBuilder(
      stream: Firestore.instance.collection('partidos').snapshots(),
      builder: (context, snapshot){
        if(!snapshot.hasData) return CircularProgressIndicator();
        return ListView(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              new Card(
                  child: new Column(
                    children:<Widget>[
                      new Text('SABADO', style: new TextStyle(fontSize: 30.0, color: Colors.green[800], fontFamily: 'Amaranth'), textAlign: TextAlign.center),
                    ],
                  ),
                ),
                new Card(
                  child: new Column(
                    children: <Widget>[
                      new Text(snapshot.data.documents[1]['2'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center),
                      new Text(snapshot.data.documents[0]['1'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['goles1'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      new Text("vs", style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'),),
                      new Text(snapshot.data.documents[0]['2'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g2'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                    ],
                  ),
                ),
                new Card(
                  child: new Column(
                    children: <Widget>[
                      new Text(snapshot.data.documents[1]['3'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center),
                      new Text(snapshot.data.documents[0]['3'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g3'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      new Text("vs", style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'),),
                      new Text(snapshot.data.documents[0]['4'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g4'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                    ],
                  ),
                ),
                new Card(
                  child: new Column(
                    children: <Widget>[
                      new Text(snapshot.data.documents[1]['4'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center),
                      new Text(snapshot.data.documents[0]['5'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g5'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      new Text("vs", style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'),),
                      new Text(snapshot.data.documents[0]['6'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g6'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                    ],
                  ),
                ),
                new Card(
                  child: new Column(
                    children: <Widget>[
                      new Text(snapshot.data.documents[1]['5'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center),
                      new Text(snapshot.data.documents[0]['7'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g7'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      new Text("vs", style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'),),
                      new Text(snapshot.data.documents[0]['8'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g8'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                    ],
                  ),
                ),
                new Card(
                  child: new Column(
                    children: <Widget>[
                      new Text(snapshot.data.documents[1]['6'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center),
                      new Text(snapshot.data.documents[0]['9'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g9'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      new Text("vs", style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'),),
                      new Text(snapshot.data.documents[0]['10'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g10'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                    ],
                  ),
                ),
                new Card(
                  child: new Column(
                    children: <Widget>[
                      new Text(snapshot.data.documents[1]['7'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center),
                      new Text(snapshot.data.documents[0]['11'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g11'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      new Text("vs", style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'),),
                      new Text(snapshot.data.documents[0]['12'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g12'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                    ],
                  ),
                ),
                new Card(
                  child: new Column(
                    children: <Widget>[
                      new Text(snapshot.data.documents[1]['8'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center),
                      new Text(snapshot.data.documents[0]['13'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g13'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      new Text("vs", style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'),),
                      new Text(snapshot.data.documents[0]['14'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g14'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                    ],
                  ),
                ),
                new Card(
                  child: new Column(
                    children:<Widget>[
                      new Text('DOMINGO', style: new TextStyle(fontSize: 30.0, color: Colors.green[800], fontFamily: 'Amaranth'), textAlign: TextAlign.center),
                    ],
                  ),
                ),
                new Card(
                  child: new Column(
                    children: <Widget>[
                      new Text(snapshot.data.documents[1]['2'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center),
                      new Text(snapshot.data.documents[0]['15'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g15'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      new Text("vs", style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'),),
                      new Text(snapshot.data.documents[0]['16'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g16'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                    ],
                  ),
                ),
                new Card(
                  child: new Column(
                    children: <Widget>[
                      new Text(snapshot.data.documents[1]['3'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center),
                      new Text(snapshot.data.documents[0]['17'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g17'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      new Text("vs", style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'),),
                      new Text(snapshot.data.documents[0]['18'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g18'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                    ],
                  ),
                ),
                new Card(
                  child: new Column(
                    children: <Widget>[
                      new Text(snapshot.data.documents[1]['4'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center),
                      new Text(snapshot.data.documents[0]['19'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g19'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      new Text("vs", style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'),),
                      new Text(snapshot.data.documents[0]['20'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g20'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                    ],
                  ),
                ),
                new Card(
                  
                  child: new Column(
                    children: <Widget>[
                      new Text(snapshot.data.documents[1]['5'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center),
                      new Text(snapshot.data.documents[0]['21'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g21'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      new Text("vs", style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'),),
                      new Text(snapshot.data.documents[0]['22'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g22'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                    ],
                  ),
                ),
                new Card(
                  child: new Column(
                    children: <Widget>[
                      new Text(snapshot.data.documents[1]['0'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center),
                      new Text(snapshot.data.documents[0]['23'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g23'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      new Text("vs", style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'),),
                      new Text(snapshot.data.documents[0]['24'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g24'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                    ],
                  ),
                ),
                new Card(
                  child: new Column(
                    children: <Widget>[
                      new Text(snapshot.data.documents[1]['1'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center),
                      new Text(snapshot.data.documents[0]['25'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g25'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      new Text("vs", style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'),),
                      new Text(snapshot.data.documents[0]['26'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g26'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                    ],
                  ),
                ),
                new Card(
                  child: new Column(
                    children: <Widget>[
                      new Text(snapshot.data.documents[1]['0.0'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center),
                      new Text(snapshot.data.documents[0]['27'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g27'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      new Text("vs", style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'),),
                      new Text(snapshot.data.documents[0]['28'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                      //new Text(snapshot.data.documents[2]['g28'], style: new TextStyle(fontSize: 15.0, fontFamily: 'Baloo'), textAlign: TextAlign.center),
                    ],
                  ),
                ),
          ],
        );
      },
    ),
  );
}}