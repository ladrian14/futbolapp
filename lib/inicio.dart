import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(new PageCero());

  class PageCero extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyInicio(),
    );
  }
}     
class MyInicio extends StatefulWidget{
  @override
  _MyInicio createState() => new _MyInicio();
}      
class _MyInicio extends State<MyInicio> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.9,
              //podemos poner una imagen o  un color fijo
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Text('Fútbol Rápido Sombrerete', style: TextStyle(color: Colors.white, fontSize: 40.0, fontFamily: 'Bree Serif'), textAlign: TextAlign.center,),
                  ),
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
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 350.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Esta aplicación es para que veas noticias sobre el torneo, tablas de posiciones y horarios de los partidos, así como ver quien es el goleador, tanto de hombres como de mujeres.',
                        style: TextStyle(fontSize: 18.0, fontFamily: 'Amaranth'), textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 265.0,
                          child: Text('Todos los datos se actualizaran los días "jueves" para que estén atentos.',
                            style: TextStyle(fontSize: 18.0, fontFamily: 'Amaranth'), textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          width: 265.0,
                          child: Text('Aplicación creada por',
                            style: TextStyle(fontSize: 16.0, fontFamily: 'Amaranth', color: Colors.green[800]), textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 265.0,
                          child: Text('Oswaldo Adrián Hernández Matías',
                            style: TextStyle(fontSize: 16.0, fontFamily: 'Pacifico', color: Colors.green[800]), textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}