
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_git_hub/api/constant.dart';
import 'package:news_git_hub/api/end_point.dart';
import 'package:news_git_hub/model/SourceResponse.dart';
class ApiManagment{
//https://newsapi.org/v2/top-headlines/sources?apiKey=API_KEY

static Future<SourceResponse> getSource()async{
  Uri url=Uri.https(
      Constant.baseUrl,
      EndPoint.apiName,
      {
        "apiKey":Constant.apiKey,

      });
  try{
    var response=await http.get(url);
    var bodyResponse=response.body; //string
    //string =>json
    var json=jsonDecode(bodyResponse); //json
    //json =>object
    // SourceResponse.fromJson(jsonDecode(response.body));
    return SourceResponse.fromJson(json);

  }catch(e){
    rethrow ;
  }






}

}