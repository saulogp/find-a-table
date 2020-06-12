import 'package:finda_a_table/pages/bottomNavigationBar.dart';
import 'package:finda_a_table/reciclagem/label.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _sobrenomeController = TextEditingController();
  TextEditingController _nicknameController = TextEditingController();
  TextEditingController _dataNascimentoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 25, right: 25),
        child: ListView(
          children: <Widget>[
            GestureDetector(
              child: Container(
                width: 140.0,
                height: 140.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/person.png"),
                  ),
                ),
              ),
              onTap: () {
                /*ImagePicker.pickImage(source: ImageSource.camera).then((file){
                    if(file == null) return;
                    setState(() {
                      file.path;
                    });
                  });*/
              },
            ),
            labelComum("Nome"),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _nomeController,
              decoration: InputDecoration(
                  hintText: "Nicolas",
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
            labelComum("Sobrenome"),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _sobrenomeController,
              decoration: InputDecoration(
                  hintText: "Cage",
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
            labelComum("Nickname"),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _nicknameController,
              decoration: InputDecoration(
                  hintText: "@onicolascage",
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
            labelComum("Data de nascimento"),
            TextFormField(
              keyboardType: TextInputType.datetime,
              controller: _dataNascimentoController,
              decoration: InputDecoration(
                  hintText: "DD/MM/AAAA",
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
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF002B32),
                borderRadius: BorderRadius.circular(5),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeBar(),
                      ),
                    );
                  },
                  child: Text(
                    "Tudo Pronto!",
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
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
