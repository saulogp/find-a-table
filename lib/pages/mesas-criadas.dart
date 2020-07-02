import 'package:finda_a_table/apis/api-mesa.dart';
import 'package:finda_a_table/class/mesa.dart';
import 'package:finda_a_table/pages/criar-mesa.dart';
//import 'package:finda_a_table/pages/detalhes-mesa.dart';
import 'package:finda_a_table/reciclagem/cardMesa.dart';
import 'package:flutter/material.dart';

class MesasCriadas extends StatefulWidget {
  @override
  _MesasCriadasState createState() => _MesasCriadasState();
}

class _MesasCriadasState extends State<MesasCriadas> {
  var mesa = MesaAPI.getAllTable();

  List nomes = [
    'Fogo no parquinho',
    'Frodo recebe outro anel',
    'Guerra dos Elfos'
  ];
  List images = [
    'assets/images/mesa1.png',
    'assets/images/mesa2.png',
    'assets/images/mesa3.png'
  ];
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
      body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: 3,
          itemBuilder: (context, index) {
            return cardMesa(nomes[index], images[index]);
          }),
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
