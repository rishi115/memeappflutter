

import 'dart:convert';

import 'package:http/http.dart';

class FetchMeme{

  static fetchNewMeme() async{

    Response  response  = await get(Uri.parse("https://random.imagecdn.app/v1/image?width=500&height=150&category=buildings&format=json") );


    Map body_data = jsonDecode(response.body);
    print(body_data["url"]);
    return body_data["url"];


  }



}