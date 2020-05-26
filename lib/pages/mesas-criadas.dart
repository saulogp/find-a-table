import 'package:finda_a_table/pages/criar-mesa.dart';
import 'package:finda_a_table/pages/detalhes-mesa.dart';
import 'package:flutter/material.dart';

class MesasCriadas extends StatefulWidget {
  @override
  _MesasCriadasState createState() => _MesasCriadasState();
}

class _MesasCriadasState extends State<MesasCriadas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mesas Criadas",
          style: TextStyle(color: Color(0xFF002B32)),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetalhesMesa(),
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.white70,
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/mesa1.png",
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Nome_Da_Mesa",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color(0xFF002B32),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetalhesMesa(),
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.white70,
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/mesa2.png",
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Nome_Da_Mesa",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color(0xFF002B32),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetalhesMesa(),
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.white70,
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/mesa3.png",
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Nome_Da_Mesa",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color(0xFF002B32),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CriarMesa(),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF002B32),
      ),
    );
  }
}
