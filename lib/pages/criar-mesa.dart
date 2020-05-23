import 'package:finda_a_table/pages/config-mesa.dart';
import 'package:flutter/material.dart';

import 'mesas.dart';

class CriarMesa extends StatefulWidget {
  @override
  _CriarMesaState createState() => _CriarMesaState();
}

class _CriarMesaState extends State<CriarMesa> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _sistemaController = new TextEditingController();
  TextEditingController _numController = new TextEditingController();
  TextEditingController _tagsController = new TextEditingController();
  TextEditingController _descController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 20, left: 25, right: 25),
          child: ListView(
            children: <Widget>[
              Text(
                "Uma nova aventura está para começar!!!",
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF002B32),
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "Nome",
                  style: TextStyle(
                    color: Color(0xFF002B32),
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                  ),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: _nomeController,
                decoration: InputDecoration(
                    hintText: "Fogo no parquinho",
                    labelStyle: TextStyle(
                      color: Color(0xFF002B32),
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF002B32)),
                    )),
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "Sistema",
                  style: TextStyle(
                    color: Color(0xFF002B32),
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                  ),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: _sistemaController,
                decoration: InputDecoration(
                    hintText: "D&D",
                    labelStyle: TextStyle(
                      color: Color(0xFF002B32),
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF002B32)),
                    )),
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "Nº de participantes",
                  style: TextStyle(
                    color: Color(0xFF002B32),
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                  ),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: _numController,
                decoration: InputDecoration(
                    hintText: "5",
                    labelStyle: TextStyle(
                      color: Color(0xFF002B32),
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF002B32)),
                    )),
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "Tags",
                  style: TextStyle(
                    color: Color(0xFF002B32),
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                  ),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: _tagsController,
                decoration: InputDecoration(
                    hintText: "Medieval; Dragão; Épico;",
                    labelStyle: TextStyle(
                      color: Color(0xFF002B32),
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF002B32)),
                    )),
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "Descrição",
                  style: TextStyle(
                    color: Color(0xFF002B32),
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                  ),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: _descController,
                decoration: InputDecoration(
                    hintText: "O dragão ficou maluco!",
                    labelStyle: TextStyle(
                      color: Color(0xFF002B32),
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF002B32)),
                    )),
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFF002B32),
                      borderRadius: BorderRadius.circular(5)),
                  child: SizedBox.expand(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConfigMesa(),
                          ),
                        );
                      },
                      child: Text(
                        "Começar aventura!!!",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
