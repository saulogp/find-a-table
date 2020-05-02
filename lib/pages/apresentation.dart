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
              "Olá aventureiro!\n\nNossos elfos descobriram\n que é a sua \nprimeira expedição\n conosco! Seja bem-vindo!!!\n\nAntes de usufruir das maravilhas deste\n sistema, você precisará\n completar seu \"Perfil de Aventureiro\"\n[os piratas não gostam muito de forasteiros]",
              style: TextStyle(
                fontSize: 22,
                color: Color(0xFF002B32),
              ),
              textAlign: TextAlign.center,
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
                  onPressed: () {},
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
