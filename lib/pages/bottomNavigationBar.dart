import 'package:finda_a_table/pages/home.dart';
import 'package:finda_a_table/pages/criar-mesa.dart';
import 'package:finda_a_table/pages/perfil.dart';
import 'package:flutter/material.dart';

class HomeBar extends StatefulWidget {
  @override
  _HomeBarState createState() => _HomeBarState();
}

class _HomeBarState extends State<HomeBar> {

  int _pageSelect = 0;
  final _pageOptions = [
    Home(),
    CriarMesa(),
    Perfil()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_pageSelect],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageSelect,
        onTap: (int index){
          setState(() {
            _pageSelect = index;
          });
        },
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xFF002B32),),
            title: Text(
              "Home",
              style: TextStyle(
                color: Color(0xFF002B32),
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, color: Color(0xFF002B32),),
            title: Text(
              "Agenda",
              style: TextStyle(
                color: Color(0xFF002B32),
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color(0xFF002B32),),
            title: Text(
              "Perfil",
              style: TextStyle(
                color: Color(0xFF002B32),
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
