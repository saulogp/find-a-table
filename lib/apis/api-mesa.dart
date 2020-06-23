import 'dart:convert';
import 'package:http/http.dart' as http;

class MesaAPI{
  static Future<bool> createTable(String name, String description, int maxofparticipants, String thumbnail, String nickname) async {
    Map params = {
      "name" : name,
      "description": description,
      "maxofparticipants": maxofparticipants,
      "thumbnail": thumbnail
    };

    var _body = json.encode(params);
    print("Json enviado: $_body");

    var url = 'https://w4s.herokuapp.com/v2/create/table?nickname=$nickname';
    var header = {"Content-Type":"application/json; charset=utf-8"};

    var response = await http.post(url, body: _body, headers: header);
    print('Response status: ${response.statusCode}');

    //Map mapResponse = json.decode(response.body); 
    bool status = false;
    if(response.statusCode == 200){
      status = true;
    }
    
    return status;
  }
}