import 'package:finda_a_table/apis/api-cadastrar.dart';
import 'package:finda_a_table/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CadastrarPage extends StatefulWidget {
  @override
  _CadastrarPageState createState() => _CadastrarPageState();
}

class _CadastrarPageState extends State<CadastrarPage> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _confirmPasswordController = new TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool _validade = false;
  String email, senha, confSenha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: _formKey,
          autovalidate: _validade,
          child: Padding(
              padding: EdgeInsets.only(top: 20, left: 25, right: 25),
              child: ListView(
                children: <Widget>[
                  Image.asset(
                    "assets/images/logo-h.png",
                    height: 80,
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
                    onSaved: (String val) {
                      email = val;
                    },
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
                    onSaved: (String val) {
                      senha = val;
                    },
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    child: Text(
                      "Confirma Senha",
                      style: TextStyle(
                        color: Color(0xFF002B32),
                        fontWeight: FontWeight.w300,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    inputFormatters: [LengthLimitingTextInputFormatter(20)],
                    validator: _validarConfSenha,
                    controller: _confirmPasswordController,
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
                    onSaved: (String val) {
                      confSenha = val;
                    },
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
                          onPressed: _sendForm,
                          child: Text(
                            "Juntar-se!!!",
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
              )
          ),
        )
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
    senha = _passwordController.text;
    confSenha = _confirmPasswordController.text;
    String pattern = r'(^\w{5,20}$ ^[a-zA-Z]\w{3,9}$ ^[a-zA-Z]\w*\d+\w*$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Informe a Senha";
    } else if (value.length < 5 || value.length > 20) {
      return "Sua senha deve ter no minimo 5 caracateres e no maximo 20 caracteres";
    } else if (senha != confSenha) {
      return "Suas senhas estão diferentes";
    } else if (regExp.hasMatch(value)) {
      return "Senha Inválida";
    }
    return null;
  }

  String _validarConfSenha(String value) {
    senha = _passwordController.text;
    confSenha = _confirmPasswordController.text;
    String pattern = r'(^\w{5,20}$ ^[a-zA-Z]\w{3,9}$ ^[a-zA-Z]\w*\d+\w*$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Confime sua Senha";
    } else if (value.length < 5 || value.length > 20) {
      return "Sua senha deve ter no minimo 5 caracateres e no maximo 20 caracteres";
    } else if (senha != confSenha) {
      return "Suas senhas estão diferentes";
    } else if (regExp.hasMatch(value)) {
      return "Senha Inválida";
    }
    return null;
  }

  _sendForm() async {
    if (_formKey.currentState.validate()) {
      //Sem erros de Validação
      _formKey.currentState.save();

      String email, senha;
      email = _emailController.text;
      senha = _passwordController.text;
      print("Email: $email\nSenha: $senha");

      var cadastro = await CadastrarApi.cadastrar(email, senha);

      if (cadastro != null) {
        print("$cadastro");
        return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Cadastrar"),
                content: Text("Verifique seu email!"),
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
                ],
              );
            });
      } else {
        return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Erro"),
                content: Text("Erro ao cadastrar, tente novamente!"),
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
      /*Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Apresentation(),
        ),
      );*/
    } else {
      //erro de validação
      setState(() {
        _validade = true;
      });
    }
  }
}
