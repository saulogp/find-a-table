import 'package:flutter/material.dart';

class Mesas extends StatefulWidget {
  @override
  _MesasState createState() => _MesasState();
}

class _MesasState extends State<Mesas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 0),
            height: 220,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Image.asset("- assets/images/chululu.png"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
