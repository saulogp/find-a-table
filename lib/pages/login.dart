import 'package:finda_a_table/apis/api-login.dart';
import 'package:finda_a_table/pages/cadastrar.dart';
import 'package:finda_a_table/pages/bottomNavigationBar.dart';
import 'package:finda_a_table/pages/recuperar-senha.dart';
import 'package:flutter/material.dart';
// import 'package:flare_flutter/flare_actor.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _userController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 30, left: 25, right: 25),
          child: ListView(
            children: <Widget>[
              Image.asset(
                "assets/images/LogoFaT.png",
                height: 150,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "Email",
                  style: TextStyle(
                    color: Color(0xFF002B32),
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                  ),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
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
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "Senha",
                  style: TextStyle(
                    color: Color(0xFF002B32),
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                  ),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
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

                    onPressed: () async{
                      String email, senha;
                      email = _userController.text;
                      senha = _passwordController.text;
                      print("Login: $email\nSenha: $senha");

                      var usuario = await LoginAPI.login(email, senha);

                      if(usuario != null){
                        print("$usuario");

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeBar(),
                          ),
                        );
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

                    },
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
          )),
    );
  }
}
