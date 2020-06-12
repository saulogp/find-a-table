import 'package:finda_a_table/reciclagem/label.dart';
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
                labelComum("Email"),
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
                  onSaved: (String val){
                    email = val;
                  },
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
                  onSaved: (String val){
                    senha = val;
                  },
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                labelComum("Confirmar Senha"),
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
                  onSaved: (String val){
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
                        borderRadius: BorderRadius.circular(5)
                    ),
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

  String _validarEmail(String value){
    String pattern = r'(^([\w\-]+\.)*[\w\- ]+@([\w\- ]+\.)+([\w\-]{2,3})$)';
    RegExp regExp = RegExp(pattern);
    if(value.isEmpty){
      return "Informe o Email";
    }else if(!regExp.hasMatch(value)){
      return "Email Inválido";
    }
    return null;
  }

  String _validarSenha(String value){
    senha = _passwordController.text;
    confSenha = _confirmPasswordController.text;
    String pattern = r'(^\w{5,20}$ ^[a-zA-Z]\w{3,9}$ ^[a-zA-Z]\w*\d+\w*$)';
    RegExp regExp = RegExp(pattern);
    if(value.isEmpty) {
      return "Informe a Senha";
    }else if(value.length < 5 || value.length >20) {
      return "Sua senha deve ter no minimo 5 caracateres e no maximo 20 caracteres";
    }else if(senha != confSenha){
      return "Suas senhas estão diferentes";
    }else if(regExp.hasMatch(value)){
      return "Senha Inválida";
    }
    return null;
  }

  String _validarConfSenha(String value){
    senha = _passwordController.text;
    confSenha = _confirmPasswordController.text;
    String pattern = r'(^\w{5,20}$ ^[a-zA-Z]\w{3,9}$ ^[a-zA-Z]\w*\d+\w*$)';
    RegExp regExp = RegExp(pattern);
    if(value.isEmpty){
      return "Confime sua Senha";
    }else if(value.length < 5 || value.length >20) {
      return "Sua senha deve ter no minimo 5 caracateres e no maximo 20 caracteres";
    }else if(senha != confSenha){
      return "Suas senhas estão diferentes";
    }else if(regExp.hasMatch(value)){
      return "Senha Inválida";
    }
    return null;
  }

  _sendForm(){
    if(_formKey.currentState.validate()){
      //Sem erros de Validação
      _formKey.currentState.save();
      /*Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Apresentation(),
        ),
      );*/
    }else{
      //erro de validação
      setState(() {
        _validade = true;
      });
    }
  }

}
