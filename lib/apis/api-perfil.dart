import 'package:finda_a_table/class/perfil.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PerfilApi{
  static Future <Perfil> perfil(String nickname, String name, String lastname, String avatar, String datanascimento) async{
    var perfil;
    //transformando os valores em map
    Map params = {
      "nickname": nickname,
      "name": name,
      "lastname": lastname,
      "avatar": avatar,
      "datanascimento": datanascimento,
    };
    //transformando o map em json
    var _body = json.encode(params);
    print("Json Enviado: $_body");

    var url = "https://w4s.herokuapp.com/v1/create/user/createprofile?e=sauloproetti@gmail.com";
    var header = {"Content-Type": "application/json; charset=utf-8"};

    var response = await http.post(url, body: _body, headers: header);
    print('Response status: ${response.statusCode}');

    Map mapResponse = json.decode(response.body);

    if(response.statusCode == 200){
      perfil = Perfil.fromJson(mapResponse);
    }else{
      perfil = null;
    }
    return perfil;
  }
}