import 'package:finda_a_table/apis/api-recuperar-senha.dart';
import 'package:finda_a_table/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RecuperarSenha extends StatefulWidget {
  @override
  _RecuperarSenhaState createState() => _RecuperarSenhaState();
}

class _RecuperarSenhaState extends State<RecuperarSenha> {
  TextEditingController _emailController = new TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool _validate = false;

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
        body: Form(
          key: _formKey,
          autovalidate: _validate,
          child: Container(
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
                  inputFormatters: [LengthLimitingTextInputFormatter(75)],
                  validator: _validarEmail,
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
                      borderRadius: BorderRadius.circular(5)),
                  child: SizedBox.expand(
                    child: FlatButton(
                      onPressed: _sendForm,
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
        ));
  }

  String _validarEmail(String value) {
    String pattern = r'(^([\w\-]+\.)*[\w\- ]+@([\w\- ]+\.)+([\w\-]{2,3})$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Informe o Email";
    } else if (!regExp.hasMatch(value)) {
      return "Email Inválido";
    }
    return null;
  }

  _sendForm() async {
    if (_formKey.currentState.validate()) {
      //sem erros de validação
      _formKey.currentState.save();

      String _email = _emailController.text;
      print("Email $_email");
      var resposta = await RecuperaSenhaAPI.recuperaSenha(_email);

      if (resposta != null) {
        return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Recuperar Senha"),
                content: Text(resposta.success),
                actions: <Widget>[
                  FlatButton(
                      child: Text("OK"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      }),
                  FlatButton(
                      child: Text("Reenviar link"),
                      onPressed: () async {
                        await RecuperaSenhaAPI.recuperaSenha(_email);
                      }),
                ],
              );
            });
      } else {
        return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Recuperar Senha"),
                content: Text("Erro!!!"),
                actions: <Widget>[
                  FlatButton(
                      child: Text("OK"),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ],
              );
            });
      }
    } else {
      setState(() {
        _validate = true;
      });
    }
  }
}
