import 'package:finda_a_table/pages/perfil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Apresentation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 25, right: 25),
        child: Column(
          children: <Widget>[
            Text(
              "Olá aventureiro!",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color(0xFF002B32),
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "\nNossos elfos descobriram que é a sua primeira expedição conosco!",
              style: TextStyle(
                fontSize: 22,
                color: Color(0xFF002B32),
              ),
              textAlign: TextAlign.justify,
            ),
            Text(
              "\nSeja bem-vindo!!!",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color(0xFF002B32),
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "\nAntes de usufruir das maravilhas deste sistema, você precisará completar seu \"Perfil de Aventureiro\".",
              style: TextStyle(
                fontSize: 22,
                color: Color(0xFF002B32),
              ),
              textAlign: TextAlign.justify,
            ),
            Text(
              "\n[os piratas não gostam muito de forasteiros]",
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Color(0xFF002B32),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Color(0xFF002B32),
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
                    "Continuar...",
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
          ],
        ),
      ),
    );
  }
}
