// import 'dart:io' as Io;
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'dart:io';
// import 'package:image_picker/image_picker.dart';
import 'package:finda_a_table/apis/api-perfil.dart';
import 'package:finda_a_table/pages/bottomNavigationBar.dart';
import 'package:finda_a_table/reciclagem/label.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _sobrenomeController = TextEditingController();
  TextEditingController _nicknameController = TextEditingController();
  TextEditingController _dataNascimentoController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _format = DateFormat("yyyy-MM-dd");

  bool _validade = false;
  String nome, sobrenome, image;

  // File _image;
  // final _picker = ImagePicker();

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
                ),
                child: Image.asset("assets/images/person.png"),
              ),
              onTap: _modalAviso,
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
              onSaved: (String val) {
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
              onSaved: (String val) {
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
            ),
            labelComum("Data de nascimento"),
            DateTimeField(
              controller: _dataNascimentoController,
              decoration: InputDecoration(
                  hintText: "YYYY-MM-DD",
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
              onShowPicker: (context, currentValue) {
                return showDatePicker(
                    context: context,
                    initialDate: currentValue ?? DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                    locale: Locale("pt"));
              },
              validator: (value) {
                if ((value.toString().isEmpty) ||
                    (DateTime.tryParse(value.toString()) == null)) {
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
    ));
  }

  String _validarNome(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Informe o Nome";
    } else if (!regExp.hasMatch(value)) {
      return "Nome Inválido";
    }
    return null;
  }

  String _validarSobrenome(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Informe o Sobrenome";
    } else if (!regExp.hasMatch(value)) {
      return "Sobrenome Inválido";
    }
    return null;
  }

  String _validarNickname(String value) {
    String pattern = r'(^[:word:][:punct:][:blank:]{1,20}$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Informe o Nickname";
    } else if (regExp.hasMatch(value)) {
      return "Nickname Inválido";
    }
    return null;
  }

//  Future _getImage() async{
//   PickedFile image = await _picker.getImage(source: ImageSource.gallery);
//    if(image != null){
//      setState(() {
//        _image = File(image.path);
//      });
//    }
//  }

//  _asyncFileUpload(String text, File imageFile)async{
//    final prefs = await SharedPreferences.getInstance();
//    String email = prefs.getString('emailPrefs');
//
//    var request = http.MultipartRequest("PATCH", Uri.parse("https://w4s.herokuapp.com/v1/create/user/createprofile?e=$email"));
//    request.fields[_convertImageToBase64()] = text;
//
//    var pic = await http.MultipartFile.fromPath(_convertImageToBase64(), _image.path);
//    request.files.add(pic);
//    var response = await request.send();
//    var responseData = await response.stream.toBytes();
//    var responseString = String.fromCharCode(responseData);
//    print(responseString);
//  }

//  _convertImageToBase64(){
//    var _pathImage = _image.path;
//    final bytes = Io.File(_pathImage).readAsBytesSync();
//
//    String img64 = base64Encode(bytes);
//    return img64;
//  }

  _modalAviso() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Atualizações Futuras"),
            content: Text(
                "Para Trocar sua foto de perfil,\nSerá necessário esperar\npelas proximas atualizações"),
            actions: <Widget>[
              FlatButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  _sendForm() async {
    if (_formKey.currentState.validate()) {
      //sem erros de validação
      _formKey.currentState.save();

      String name, lastname, nickname, datanascimento;
      name = _nomeController.text;
      lastname = _sobrenomeController.text;
      nickname = _nicknameController.text;
      datanascimento = _dataNascimentoController.text;
      print(
          "Nome: $name\nSobrenome: $lastname\nNickname: $nickname\nData de Nascimento: $datanascimento");

      var perfil =
          await PerfilApi.perfil(nickname, name, lastname, datanascimento);

      if (perfil != null) {
        final prefs = await SharedPreferences.getInstance();
        prefs.setString('nicknamePrefs', nickname);

        print(nickname);

        print("$perfil");
        return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Cadastrar"),
                content: Text("Verifique seus dados"),
                actions: <Widget>[
                  FlatButton(
                    child: Text("OK"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeBar(),
                        ),
                      );
                    },
                  ),
                ],
              );
            });
      } else {
        print("$perfil");

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
                    },
                  ),
                ],
              );
            });
      }
    } else {
      setState(() {
        _validade = true;
      });
    }
  }
}
