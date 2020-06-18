import 'package:finda_a_table/pages/bottomNavigationBar.dart';
import 'package:finda_a_table/reciclagem/label.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {

  TextEditingController _nomeController = TextEditingController();
  TextEditingController _sobrenomeController = TextEditingController();
  TextEditingController _nicknameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _format = DateFormat("dd/MM/yyyy");

  bool _validade = false;
  String nome, sobrenome, nickname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        autovalidate: _validade,
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 25, right: 25),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                child: Container(
                  width: 140.0,
                  height: 140.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/person.png"),
                    ),
                  ),
                ),
                onTap: () {
                  /*ImagePicker.pickImage(source: ImageSource.camera).then((file){
                    if(file == null) return;
                    setState(() {
                      file.path;
                    });
                  });*/
                },
              ),
              labelComum("Nome"),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                inputFormatters: [LengthLimitingTextInputFormatter(20)],
                validator: _validarNome,
                controller: _nomeController,
                decoration: InputDecoration(
                    hintText: "Nicolas",
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
                onSaved: (String val){
                  nome = val;
                },
              ),
              labelComum("Sobrenome"),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                inputFormatters: [LengthLimitingTextInputFormatter(20)],
                validator: _validarSobrenome,
                controller: _sobrenomeController,
                decoration: InputDecoration(
                    hintText: "Cage",
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
                onSaved: (String val){
                  sobrenome = val;
                },
              ),
              labelComum("Nickname"),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                inputFormatters: [LengthLimitingTextInputFormatter(30)],
                validator: _validarNickname,
                controller: _nicknameController,
                decoration: InputDecoration(
                    hintText: "@onicolascage",
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
                onSaved: (String val){
                  nickname = val;
                },
              ),
              labelComum("Data de nascimento"),
              DateTimeField(
                decoration: InputDecoration(
                    hintText: "DD/MM/AAAA",
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
                format: _format,
                onShowPicker: (context, currentValue){
                  return showDatePicker(
                    context: context,
                    initialDate: currentValue ?? DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                    locale: Locale("pt")
                  );
                },
                validator: (value) {
                  if ((value.toString().isEmpty) || (DateTime.tryParse(value.toString()) == null)) {
                    return "Informe sua Data de Nascimento";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
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
                      "Tudo Pronto!",
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
            ],
          ),
        ),
      )
    );
  }

  String  _validarNome(String value){
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = RegExp(pattern);
    if(value.isEmpty){
      return "Informe o Nome";
    }else if(!regExp.hasMatch(value)){
      return "Nome Inválido";
    }
    return null;
  }

  String  _validarSobrenome(String value){
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = RegExp(pattern);
    if(value.isEmpty){
      return "Informe o Sobrenome";
    }else if(!regExp.hasMatch(value)){
      return "Sobrenome Inválido";
    }
    return null;
  }

  String _validarNickname(String value){
    String pattern = r'(^[:word:][:punct:][:blank:]{1,20}$)';
    RegExp regExp = RegExp(pattern);
    if(value.isEmpty){
      return "Informe o Nickname";
    }else if(regExp.hasMatch(value)){
      return "Nickname Inválido";
    }
    return null;
  }

  _sendForm(){
    if(_formKey.currentState.validate()){
      //sem erros de validação
      _formKey.currentState.save();
      /*Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeBar(),
        ),
      );*/
    }else{
      setState(() {
        _validade = true;
      });
    }
  }

}
