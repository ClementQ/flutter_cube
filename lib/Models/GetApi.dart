import 'dart:convert';
import 'package:http/http.dart' as http;

class GetApi{
  final String Url = "https://api.themoviedb.org/3";
  final String Key = "e3c1f093e236c72cd5ee378fa73d3b28";
  final String Lang = "fr-FR";

  Future<Map<String,dynamic>> getArticle() async{
    http.Response response;
    String completeUrl = Url + "/movie/popular?api_key=" + Key + "&language="+Lang;
    print(completeUrl);

    response = await http.get(completeUrl);

    Map<String,dynamic> map = {
      "code":1,
      "body":""
    };

    if(response.statusCode==200){
      map["code"] = 0;
      map["body"] = jsonDecode(response.body);
    }else{
      map["code"] = 0;
      map["body"] = "";
    }

    return map;
  }

}