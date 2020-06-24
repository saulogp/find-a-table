import 'package:finda_a_table/apis/api-login.dart';
import 'package:finda_a_table/pages/cadastrar.dart';
import 'package:finda_a_table/pages/bottomNavigationBar.dart';
import 'package:finda_a_table/pages/recuperar-senha.dart';
import 'package:finda_a_table/reciclagem/label.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flare_flutter/flare_actor.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _userController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        autovalidate: _validate,
        child: Container(
            padding: EdgeInsets.only(top: 30, left: 25, right: 25),
            child: ListView(
              children: <Widget>[
                Image.asset(
                  "assets/images/LogoFaT.png",
                  height: 150,
                ),
                labelComum("Email"),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  inputFormatters: [LengthLimitingTextInputFormatter(75)],
                  validator: _validarEmail,
                  controller: _userController,
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
                labelComum("Senha"),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  inputFormatters: [LengthLimitingTextInputFormatter(20)],
                  validator: _validarSenha,
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "................",
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
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: FlatButton(
                    child: Text(
                      "Esqueceu sua senha? Vamos te ajudar a recupera-la :)",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFF002B32),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecuperarSenha(),
                        ),
                      );
                    },
                  ),
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
                      onPressed: _sendForm,
                      child: Text(
                        "Aventurar!!!",
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
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: FlatButton(
                    child: Text(
                      "Não tem conta? Registre-se aqui!",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF002B32),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CadastrarPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )
        ),
      ),
    );
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

  String _validarSenha(String value) {
    String pattern = r'(^\w{5,20}$ ^[a-zA-Z]\w{3,9}$ ^[a-zA-Z]\w*\d+\w*$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Informe a Senha";
    } else if (value.length < 5 || value.length > 20) {
      return "Sua senha deve ter no minimo 5 caracateres e no maximo 20 caracteres";
    } else if (regExp.hasMatch(value)) {
      return "Senha Inválida";
    }
    return null;
  }

  _sendForm() async{
    if(_formKey.currentState.validate()){
      //sem erros de validação
      _formKey.currentState.save();

      String email, senha;
      email = _userController.text;
      senha = _passwordController.text;
      print("Login: $email\nSenha: $senha");

      var usuario = await LoginAPI.login(email, senha);

      if(usuario != null){
        if(usuario.emailCheck == false){
          return showDialog(
            context: context,
            builder: (context){
              return AlertDialog(
                title: Text("Login"),
                content: Text("Ative sua conta pelo link enviado no email !"),
                actions: <Widget>[
                  FlatButton(
                      child: Text("OK"),
                      onPressed: (){
                        Navigator.pop(context);
                      }
                  ),
                ],
              );
            }
        );
        }else{
          print("$usuario");
          String osucesso = usuario.success;
          
          //SharedPreferences prefs = await SharedPreferences.getInstance();
          final prefs = await SharedPreferences.getInstance();
          prefs.setString('success', osucesso);
          
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeBar(),
            ),
          );
        }
      }else{
        //alert
        return showDialog(
            context: context,
            builder: (context){
              return AlertDialog(
                title: Text("Login"),
                content: Text("Login incorreto!"),
                actions: <Widget>[
                  FlatButton(
                      child: Text("OK"),
                      onPressed: (){
                        Navigator.pop(context);
                      }
                  ),
                ],
              );
            }
        );
      }
    }else{
      setState(() {
        //erro de validação
        _validate = true;
      });
    }
  }

}
