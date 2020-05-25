import 'package:finda_a_table/pages/config-mesa.dart';
import 'package:flutter/material.dart';

class DetalhesMesa extends StatefulWidget {
  @override
  _DetalhesMesaState createState() => _DetalhesMesaState();
}

class _DetalhesMesaState extends State<DetalhesMesa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Image.asset(
                  "assets/images/mesa1.png",
                  width: double.maxFinite,
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                  width: 50,
                  height: 50,
                  top: 150,
                  right: 20,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.edit,
                      color: Color(0xFF002B32),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 20, left: 25, right: 25),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Nome da Aventura",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 22,
                            color: Color(0xFF002B32),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit, color: Color(0xFF002B32)),
                      ),
                    ],
                  ),
                ],
              )),
          Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "O dragão ficou maluco!",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      )),
                    ],
                  ),
                ],
              )),
          Container(
              padding: EdgeInsets.only(top: 20, left: 25, right: 25),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Informações extras",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 22,
                            color: Color(0xFF002B32),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Container(
              padding: EdgeInsets.only(top:10, left: 25, right: 25),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "Nº de participantes: 5",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      )),
                    ],
                  )
                ],
              )),
              Container(
              padding: EdgeInsets.only(top:10, left: 25, right: 25),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "Discord: http://discord.com.br",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      )),
                    ],
                  )
                ],
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ConfigMesa(),
            ),
          );
        },
        child: Icon(Icons.settings),
        backgroundColor: Color(0xFF002B32),
      ),
    );
  }
}
