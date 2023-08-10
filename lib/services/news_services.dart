import 'dart:convert';

import '../model/news_model.dart';
import 'package:http/http.dart'as http;
class NewsServices{
  String baseUrl='https://newsapi.org/v2';
  String apiKey='073a57d360344439b35961b215f3d0a8';
  Future<NewsModel?>getNews({required String newsName})async{
NewsModel ?newsModel;
try{
Uri url=Uri.parse('$baseUrl/everything?q=$newsName&apiKey=$apiKey');
http.Response response=await http.get(url);
Map<String,dynamic>data=jsonDecode(response.body);
newsModel=NewsModel.fromJson(data);
}catch(e){
  print(e);
}
return newsModel;
  }
}