import 'package:flutter/material.dart';

class RecuperarSenha extends StatefulWidget {
  @override
  _RecuperarSenhaState createState() => _RecuperarSenhaState();
}

class _RecuperarSenhaState extends State<RecuperarSenha> {
  TextEditingController _emailController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 25, right: 25),
        child: ListView(
          children: <Widget>[
            Image.asset(
              "assets/images/esqueceu_a_senha.png",
              height: 140,
            ),
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Parece que os goblins roubaram sua senha :(\n\n Mas não se preocupe, os cinco magos vão recuperar para você!!!\n\nInsira seu email:",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
              decoration: InputDecoration(
                  hintText: "nicolas@cage.com",
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
                borderRadius: BorderRadius.circular(5)
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Enviar!!!",
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
