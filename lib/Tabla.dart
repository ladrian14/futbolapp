import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(new PageTree());

class PageTree extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tablapage(),
    );
  }
}
class Tablapage extends StatefulWidget{
  @override
  _Tablapage createState() => new _Tablapage();
}      
class _Tablapage extends State<Tablapage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
    body: StreamBuilder(
      stream: Firestore.instance.collection('tabla').snapshots(),
      builder: (context, snapshot){
        if(!snapshot.hasData) return CircularProgressIndicator();
        return SafeArea(
         child: ListView(
           children: <Widget>[
             DataTable(
              columns: [
                DataColumn(label: Text('Equipos', style: TextStyle(fontSize: 15.0, fontFamily: 'Amaranth'),)),
                DataColumn(label: Text('Puntos', style: TextStyle(fontSize: 15.0, fontFamily: 'Amaranth'),)),
              ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['1'], style: TextStyle(fontFamily: 'Baloo', color: Colors.green),)),
                    DataCell(Text(snapshot.data.documents[1]['1'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.green),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['2'], style: TextStyle(fontFamily: 'Baloo', color: Colors.green),)),
                    DataCell(Text(snapshot.data.documents[1]['2'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.green),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['3'], style: TextStyle(fontFamily: 'Baloo', color: Colors.green),)),
                    DataCell(Text(snapshot.data.documents[1]['3'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.green),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['4'], style: TextStyle(fontFamily: 'Baloo', color: Colors.green),)),
                    DataCell(Text(snapshot.data.documents[1]['4'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.green),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['5'], style: TextStyle(fontFamily: 'Baloo', color: Colors.green),)),
                    DataCell(Text(snapshot.data.documents[1]['5'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.green),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['6'], style: TextStyle(fontFamily: 'Baloo', color: Colors.green),)),
                    DataCell(Text(snapshot.data.documents[1]['6'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.green),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['7'], style: TextStyle(fontFamily: 'Baloo', color: Colors.green),)),
                    DataCell(Text(snapshot.data.documents[1]['7'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.green),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['8'], style: TextStyle(fontFamily: 'Baloo', color: Colors.green),)),
                    DataCell(Text(snapshot.data.documents[1]['8'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.green),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['9'], style: TextStyle(fontFamily: 'Baloo', color: Colors.red),)),
                    DataCell(Text(snapshot.data.documents[1]['9'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.red),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['10'], style: TextStyle(fontFamily: 'Baloo', color: Colors.red),)),
                    DataCell(Text(snapshot.data.documents[1]['10'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.red),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['11'], style: TextStyle(fontFamily: 'Baloo', color: Colors.red),)),
                    DataCell(Text(snapshot.data.documents[1]['11'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.red),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['12'], style: TextStyle(fontFamily: 'Baloo', color: Colors.red),)),
                    DataCell(Text(snapshot.data.documents[1]['12'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.red),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['13'], style: TextStyle(fontFamily: 'Baloo', color: Colors.red),)),
                    DataCell(Text(snapshot.data.documents[1]['13'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.red),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['14'], style: TextStyle(fontFamily: 'Baloo', color: Colors.red),)),
                    DataCell(Text(snapshot.data.documents[1]['14'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.red),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['15'], style: TextStyle(fontFamily: 'Baloo', color: Colors.green),)),
                    DataCell(Text(snapshot.data.documents[1]['15'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.green),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['16'], style: TextStyle(fontFamily: 'Baloo', color: Colors.green),)),
                    DataCell(Text(snapshot.data.documents[1]['16'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.green),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['17'], style: TextStyle(fontFamily: 'Baloo', color: Colors.green),)),
                    DataCell(Text(snapshot.data.documents[1]['17'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.green),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['18'], style: TextStyle(fontFamily: 'Baloo', color: Colors.green),)),
                    DataCell(Text(snapshot.data.documents[1]['18'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.green),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['19'], style: TextStyle(fontFamily: 'Baloo', color: Colors.green),)),
                    DataCell(Text(snapshot.data.documents[1]['19'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.green),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['20'], style: TextStyle(fontFamily: 'Baloo', color: Colors.green),)),
                    DataCell(Text(snapshot.data.documents[1]['20'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.green),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['21'], style: TextStyle(fontFamily: 'Baloo', color: Colors.green),)),
                    DataCell(Text(snapshot.data.documents[1]['21'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.green),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text(snapshot.data.documents[0]['22'], style: TextStyle(fontFamily: 'Baloo', color: Colors.green),)),
                    DataCell(Text(snapshot.data.documents[1]['22'], style: TextStyle(fontSize: 25.0, fontFamily: 'Baloo', color: Colors.green),))
                  ]),
                ]),
              ],
            ),
        );
      },
    ),
  );
}}