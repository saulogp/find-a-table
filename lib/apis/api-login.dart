import 'dart:convert';
import 'package:finda_a_table/class/usuario.dart';
import 'package:http/http.dart' as http;

class LoginAPI {
  static Future<Usuario> login(String email, String senha) async{
    var usuario;
    //transformando os valores em map
    Map params = {
      "email": email,
      "password": senha
    };
    // //transformando o map em json
    var _body = json.encode(params);
    print("Json enviado: $_body");

    var url = 'https://w4s.herokuapp.com/login';
    var header = {"Content-Type":"application/json; charset=utf-8"};
    
    var response = await http.post(url, body: _body, headers: header);
    print('Response status: ${response.statusCode}');
        
    Map mapResponse = json.decode(response.body); 
    
    if(response.statusCode == 200){
      usuario = Usuario.fromJson(mapResponse);
    }else if(response.statusCode == 400){
      usuario = Usuario(emailCheck: false);
    }else if(response.statusCode == 401){
      usuario = Usuario(existe: false);
    }else{
      usuario = null;
    }
    return usuario;
  }
}