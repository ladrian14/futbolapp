import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/painting.dart';

void main() => runApp(new PageFor());

class PageFor extends StatelessWidget{
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
        if(!snapshot.hasData) return Text('Cargando', style: new TextStyle(fontSize: 10.0), textAlign: TextAlign.center);
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
                            Text('Noticias', style: TextStyle(color: Colors.white, fontSize: 40.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center),
                            Align(
                              alignment: Alignment.center,
                              child: new Image.asset('assets/nike.png',
                                width: 100.0,
                                height: 50.0,
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
                          child: new Text(snapshot.data.documents[0]['noticias'], style: new TextStyle(fontSize: 17.0, fontFamily: 'Amaranth'), textAlign: TextAlign.justify),
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