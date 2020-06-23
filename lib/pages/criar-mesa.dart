import 'package:finda_a_table/pages/config-mesa.dart';
import 'package:finda_a_table/reciclagem/label.dart';
import 'package:flutter/material.dart';


class CriarMesa extends StatefulWidget {
  @override
  _CriarMesaState createState() => _CriarMesaState();
}

class _CriarMesaState extends State<CriarMesa> {

  TextEditingController _nomeController = TextEditingController();
  TextEditingController _numController = TextEditingController();
  TextEditingController _descController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool _validate = false;
  String nome, sistema, num, tags, desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        autovalidate: _validate,
        child: Container(
            padding: EdgeInsets.only(top: 20, left: 25, right: 25),
            child: ListView(
              children: <Widget>[
                Text(
                  "Uma nova aventura está para começar!!!",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xFF002B32),
                  ),
                  textAlign: TextAlign.center,
                ),
                labelComum("Nome"),
                TextFormField(
                  keyboardType: TextInputType.text,
                  validator: _validarNome,
                  controller: _nomeController,
                  decoration: InputDecoration(
                      hintText: "Fogo no parquinho",
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
                // labelComum("Sistema"),
                // TextFormField(
                //   keyboardType: TextInputType.text,
                //   validator: _validarSistema,
                //   controller: _sistemaController,
                //   decoration: InputDecoration(
                //       hintText: "D&D",
                //       labelStyle: TextStyle(
                //         color: Color(0xFF002B32),
                //         fontWeight: FontWeight.w300,
                //         fontSize: 15,
                //       ),
                //       border: OutlineInputBorder(),
                //       focusedBorder: OutlineInputBorder(
                //         borderSide: BorderSide(color: Color(0xFF002B32)),
                //       )),
                //   style: TextStyle(
                //     fontSize: 15,
                //   ),
                //   onSaved: (String val){
                //     sistema = val;
                //   },
                // ),
                labelComum("Nº de Participantes"),
                TextFormField(
                  keyboardType: TextInputType.number,
                  validator: _validarNum,
                  controller: _numController,
                  decoration: InputDecoration(
                      hintText: "5",
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
                    num = val;
                  },
                ),
                // labelComum("Tags"),
                // TextFormField(
                //   keyboardType: TextInputType.text,
                //   validator: _validarTags,
                //   controller: _tagsController,
                //   decoration: InputDecoration(
                //       hintText: "Medieval; Dragão; Épico;",
                //       labelStyle: TextStyle(
                //         color: Color(0xFF002B32),
                //         fontWeight: FontWeight.w300,
                //         fontSize: 15,
                //       ),
                //       border: OutlineInputBorder(),
                //       focusedBorder: OutlineInputBorder(
                //         borderSide: BorderSide(color: Color(0xFF002B32)),
                //       )),
                //   style: TextStyle(
                //     fontSize: 15,
                //   ),
                //   onSaved: (String val){
                //     tags = val;
                //   },
                // ),
                labelComum("Descrição"),
                TextFormField(
                  keyboardType: TextInputType.text,
                  validator: _validarDesc,
                  controller: _descController,
                  decoration: InputDecoration(
                      hintText: "O dragão ficou maluco!",
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
                    desc = val;
                  },
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
                          "Começar aventura!!!",
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
      return "Nome Inválido";
    }
    return null;
  }

  String _validarSistema(String value){
    String pattern = r'(^[:alpha:][:punct:][:blank:]{1,20}$)';
    RegExp regExp = RegExp(pattern);
    if(value.isEmpty){
      return "Informe o Sistema";
    }else if(regExp.hasMatch(value)){
      return "Sistema Inválido";
    }
    return null;
  }

  String _validarNum(String value){
    String pattern = r'(^[:digit:]{1,20}$)';
    RegExp regExp = RegExp(pattern);
    if(value.isEmpty){
      return "Informe o N° de Participantes";
    }else if(regExp.hasMatch(value)){
      return "N° de Participantes Inválido";
    }
    return null;
  }

  String _validarTags(String value){
    String pattern = r'(^[:word:][:punct:][:blank:]{1,20}$)';
    RegExp regExp = RegExp(pattern);
    if(value.isEmpty){
      return "Informe a Tag";
    }else if(regExp.hasMatch(value)){
      return "Tag Inválida";
    }
    return null;
  }

  String _validarDesc(String value){
    String pattern = r'(^[:word:][:blank:]{1,20}$)';
    RegExp regExp = RegExp(pattern);
    if(value.isEmpty){
      return "Informe a Descrição";
    }else if(regExp.hasMatch(value)){
      return "Descrição Inválida";
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
          builder: (context) => ConfigMesa(),
        ),
      );*/
    }else{
      setState(() {
        _validate = true;
      });
    }
  }

}
