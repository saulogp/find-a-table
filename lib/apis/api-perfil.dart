import 'dart:io';

import 'package:finda_a_table/class/perfil.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class PerfilApi {
  static Future<Perfil> perfil(String nickname, String name, String lastname,
      String datanascimento) async {
    var perfil;
    final prefs = await SharedPreferences.getInstance();
    String email = prefs.getString('emailPrefs');
    String token = prefs.getString('successPrefs');
    //transformando os valores em map
    Map params = {
      "nickname": nickname,
      "name": name,
      "lastname": lastname,
      "datanascimento": datanascimento,
    };
    //transformando o map em json
    var _body = json.encode(params);
    print("Json Enviado: $_body");
    print("E-mail: $email");
    print("Token: $token");

    var url = "https://w4s.herokuapp.com/v1/create/user/createprofile?e=$email";
    var header = {
      "Content-Type": "application/json; charset=utf-8",
      HttpHeaders.authorizationHeader: "Bearer $token"
    };

    var response = await http.patch(url, body: _body, headers: header);
    print('Response status: ${response.statusCode}');

    Map mapResponse = json.decode(response.body);

    if (response.statusCode == 200) {
      perfil = Perfil.fromJson(mapResponse);
    } else {
      perfil = null;
    }
    return perfil;
  }
}
