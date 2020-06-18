import 'package:finda_a_table/class/cadastro.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CadastrarApi {
  static Future<Cadastro> cadastrar(String email, String senha) async {
    var cadastro;
    //transformando os valores em map
    Map params = {"email": email, "password": senha};
    // //transformando o map em json
    var _body = json.encode(params);
    print("Json enviado: $_body");

    var url = 'https://w4s.herokuapp.com/create/user';
    var header = {"Content-Type": "application/json; charset=utf-8"};

    var response = await http.post(url, body: _body, headers: header);
    print('Response status: ${response.statusCode}');

    Map mapResponse = json.decode(response.body);

    if (response.statusCode == 200) {
      cadastro = Cadastro.fromJson(mapResponse);
    } else {
      cadastro = null;
    }
    return cadastro;
  }
}
