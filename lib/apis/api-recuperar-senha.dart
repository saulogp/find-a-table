//https://w4s.herokuapp.com/user/password/recovery?e=ancogamer@gmail.com
import 'dart:convert';
import 'package:finda_a_table/class/recuperar-senha.dart';
import 'package:http/http.dart' as http;

class RecuperaSenhaAPI {
  static Future<RecuperarSenha> recuperaSenha(String email) async{
    var recuperaSenha;
    
    var url = 'https://w4s.herokuapp.com/user/password/recovery?e=$email';
        
    var response = await http.post(url);

    print('Response status: ${response.statusCode}');
        
    Map mapResponseRS = json.decode(response.body); 
    
    if(response.statusCode == 200){
      recuperaSenha = new RecuperarSenha.fromJson(mapResponseRS);
    }else{
      recuperaSenha = null;
    }
    return recuperaSenha;
  }
}