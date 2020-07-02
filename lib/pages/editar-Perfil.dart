import 'package:finda_a_table/pages/perfil.dart';
import 'package:flutter/material.dart';

class EditarPerfil extends StatefulWidget {
  @override
  _EditarPerfilState createState() => _EditarPerfilState();
}

class _EditarPerfilState extends State<EditarPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 25, right: 25),
        child: ListView(
          children: <Widget>[
            Container(
              width: 140.0,
              height: 140.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/person.png"),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Nicolas Cage",
                  style: TextStyle(
                    color: Color(0xFF002B32),
                    fontWeight: FontWeight.w400,
                    fontSize: 26,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "nicolas.cage@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 140,
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
                            builder: (context) => Perfil(),
                          ),
                        );
                      },
                      child: Text(
                        "Editar Perfil",
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
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xFF002B32), width: 2.0),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: SizedBox.expand(
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Sair",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF002B32),
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}