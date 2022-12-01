import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class GetNewsService {
  static getNews() async {
    try {
      Response response = await Dio().get(
          "https://newsapi.org/v2/everything?q=tesla&from=2022-11-01&sortBy=publishedAt&apiKey=${dotenv.get("API_KEY")}");
      print(response.data);
    } catch (e) {}
  }
}
