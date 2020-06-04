import 'package:finda_a_table/pages/apresentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CadastrarPage extends StatefulWidget {
  @override
  _CadastrarPageState createState() => _CadastrarPageState();
}

class _CadastrarPageState extends State<CadastrarPage> {

  TextEditingController _userController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _confirmPasswordController = new TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool _validade = false;
  String usuario, email, senha, confSenha;

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
                    "Usuário",
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
                  validator: _validarNome,
                  controller: _userController,
                  decoration: InputDecoration(
                      hintText: "Nicolas Cage",
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
                    usuario = val;
                  },
                  style: TextStyle(
                    fontSize: 15,
                  ),
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
                  onSaved: (String val){
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
                  onSaved: (String val){
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
                  onSaved: (String val){
                    confSenha = val;
                  },
                  style: TextStyle(
                    fontSize: 15,
                  ),
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

  String _validarNome(String value){
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = RegExp(pattern);
    if(value.isEmpty){
      return "Informe o Nome";
    }else if(!regExp.hasMatch(value)){
      return "O nome deve conter caracteres de a-z ou A-Z";
    }
    return null;
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
    String pattern = r'(^\w{5,20}$ ^[a-zA-Z]\w{3,9}$ ^[a-zA-Z]\w*\d+\w*$)';
    RegExp regExp = RegExp(pattern);
    if(value.isEmpty) {
      return "Informe a Senha";
    }else if(value.length < 5 || value.length >20){
      return "Sua senha deve ter no minimo 5 caracateres e no maximo 20 caracteres";
    }else if(regExp.hasMatch(value)){
      return "Senha Inválida";
    }
    return null;
  }

  String _validarConfSenha(String value){
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
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Apresentation(),
        ),
      );
    }else{
      //erro de validação
      setState(() {
        _validade = true;
      });
    }
  }

}
