import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class MesaAPI{
  //Create Table ------------------------------------------
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
    //converter em array

    var header = {"Content-Type":"application/json; charset=utf-8",
     HttpHeaders.authorizationHeader: "Basic your_api_token_here"};

    var response = await http.post(url, body: _body, headers: header);
    print('Response status: ${response.statusCode}');

    //Map mapResponse = json.decode(response.body); 
    bool status = false;
    if(response.statusCode == 200){
      status = true;
    }
    
    return status;
  }

  //Delete Table ----------------------------------------------------------

  // Future<Response> deleteTable(String id) async {
  // final http.Response response = await http.delete(
  //   'https://.../$id',
  //   headers: <String, String>{
  //     'Content-Type': 'application/json; charset=UTF-8',
  //   },
  // );
  
  // return response;
  // }


  //Get All Table 
  //https://flutter.dev/docs/cookbook/networking/fetch-data
  //https://www.youtube.com/watch?v=syCUTugjELQ&list=PLCIwljzzdvqnNYgoioaRS9JBTG7o9O1Vg&index=5
  // Future<List<Table>> getAllTable(String email) async {
    
  //   final response = await http.get('http://localhost:8080/v2/searchall/table?e=$email');

  //   List listaResponse = json.decode(response.body);

  //   final mesa = List<Table>();

  //   for(Map map in listaResponse){
  //     Table t = Table.fromJson(map);
  //     mesa.add(t);
  //   }
  //   return mesa;
  // }
}