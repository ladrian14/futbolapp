import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/painting.dart';

void main() => runApp(new PageOne());

class PageOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyGoleopage(),
    );
  }
}

class MyGoleopage extends StatefulWidget{
  @override
  _MyGoleopage createState() => new _MyGoleopage();
}      
class _MyGoleopage extends State<MyGoleopage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
    body: StreamBuilder(
      stream: Firestore.instance.collection('nombre').snapshots(),
      builder: (context, snapshot){
        if(!snapshot.hasData) return CircularProgressIndicator();
        return new Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2.9,
                  //imagen o icono
                  decoration: new BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF1B5E20),
                        Color(0xFF43A047),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90.0),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.center,
                            ),
                            Text('Primer Lugar', style: TextStyle(color: Colors.white, fontSize: 20.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center),
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              child: new Row(
                                children: <Widget>[
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(left: 25.0),
                                        child: new Text(snapshot.data.documents[0]['Hombre'], style: new TextStyle(fontSize: 30.0, fontFamily: 'Amaranth', color: Colors.white),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35.0),
                                        child: new Text(snapshot.data.documents[0]['golesH'], style: new TextStyle(fontSize: 40.0, fontFamily: 'Amaranth', color: Colors.white),),
                                      ),
                                    ],
                                  ),
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(left: 26.0),
                                        child: new Text(snapshot.data.documents[0]['Mujer'], style: new TextStyle(fontSize: 30.0, fontFamily: 'Amaranth', color: Colors.white),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 35.0),
                                        child: new Text(snapshot.data.documents[0]['golesM'], style: new TextStyle(fontSize: 40.0, fontFamily: 'Amaranth', color: Colors.white),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // afuera del Container principal
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 350.0,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: new Text(snapshot.data.documents[0]['texto'], style: new TextStyle(fontSize: 17.0, fontFamily: 'Amaranth'), textAlign: TextAlign.justify),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 260.0,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: new Text(snapshot.data.documents[0]['portero'], style: new TextStyle(fontSize: 19.0, fontFamily: 'Amaranth', color: Colors.green[800]), textAlign: TextAlign.left),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 260.0,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: new Text(snapshot.data.documents[0]['portera'], style: new TextStyle(fontSize: 19.0, fontFamily: 'Amaranth', color: Colors.green[800]), textAlign: TextAlign.left),
                            ),
                          ),
                        ],
                      ),
                    ),
              ],
            ),
          ),
        );
      },
    ),
  );
}}