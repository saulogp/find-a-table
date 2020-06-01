import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginAPI {
  static Future<bool> login(String email, String senha) async{
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
    print('Response body: ${response.body}');   

    Map mapResponse = json.decode(response.body); 
    String success = mapResponse['success'];
    print("Success: $success");

    return true;
  }
}