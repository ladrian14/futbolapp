import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:futsombre/Noticias.dart';
import 'package:futsombre/Goleo.dart';
import 'package:futsombre/Partidos.dart';
import 'package:futsombre/Tabla.dart';
import 'package:futsombre/inicio.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false, home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  
  int pageIndex = 0;

  final PageCero _cero = PageCero();
  final PageOne _one = new PageOne();
  final PageTwo _two = new PageTwo();
  final PageTree _tree = new PageTree();
  final PageFor _for = new PageFor();

  Widget _showPage = new PageCero();

  Widget _pageChoser(int page){
    switch (page){
      case 0:
      return _cero;
      break;
      case 1:
      return _one;
      break;
      case 2:
      return _two;
      break;
      case 3:
      return _tree;
      break;
      case 4:
      return _for;
      break;
      default:
      return new Container(
        child: new Center(child: new Text('no hay pagina'),),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: pageIndex,
          height: 75.0,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.assignment, size: 30),
            Icon(Icons.date_range, size: 30),
            Icon(Icons.format_list_numbered, size: 30),
            Icon(Icons.email, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.green[400],
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChoser(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            //child: Text(_page.toString(), textScaleFactor: 10.0),
            child: _showPage,
          ),
        )
    );
  }
}