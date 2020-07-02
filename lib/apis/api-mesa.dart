import 'dart:convert';
import 'dart:io';
import 'package:finda_a_table/class/mesa.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class MesaAPI {
  //Create Table ------------------------------------------
  static Future<bool> createTable(String name, String description,
      int maxofparticipants, String sistema, String link) async {
    final prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('successPrefs');
    String email = prefs.getString('emailPrefs');
    String nickname = prefs.getString('nicknamePrefs');

    Map params = {
      "name": name,
      "description": description,
      "maxofparticipants": maxofparticipants,
      "rpgsystem": sistema,
      "otherlinks": link
      // "thumbnail": thumbnail
    };

    var _body = json.encode(params);
    print("Json enviado: $_body");
    print("Token: $token\nEmail: $email\nNickname: $nickname");

    var url =
        'https://w4s.herokuapp.com/v2/create/table?nickname=@saulo&e=$email';
    //converter em array

    var header = {
      "Content-Type": "application/json; charset=utf-8",
      HttpHeaders.authorizationHeader: "Bearer $token"
    };

    var response = await http.post(url, body: _body, headers: header);
    print('Response status: ${response.statusCode}');

    //Map mapResponse = json.decode(response.body);
    bool status = false;

    if (response.statusCode == 200) {
      status = true;
    }

    return status;
  }

  //Get All Table
  //https://flutter.dev/docs/cookbook/networking/fetch-data
  //https://www.youtube.com/watch?v=syCUTugjELQ&list=PLCIwljzzdvqnNYgoioaRS9JBTG7o9O1Vg&index=5
  static Future<List<TableClass>> getAllTable() async {
    final prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('successPrefs');
    String email = prefs.getString('emailPrefs');

    var header = {
      "Content-Type": "application/json; charset=utf-8",
      HttpHeaders.authorizationHeader: "Bearer $token"
    };
    var url = 'https://w4s.herokuapp.com/v2/searchall/table?e=$email';

    final response = await http.get(url, headers: header);
    print("Response: $response");

    final mesas = List<TableClass>();

    print(mesas.toString());

    if (response.statusCode == 200) {
      print("Success");

      Map<String, dynamic> mapResponse = json.decode(response.body);
      List<dynamic> listaResponse = mapResponse["name"];

      for (Map map in listaResponse) {
        TableClass t = TableClass.fromJson(map);
        mesas.add(t);
      }
    } else {
      print("Deu ruim!");
    }

    return mesas;
  }
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
