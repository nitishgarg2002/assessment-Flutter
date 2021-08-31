import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/models/article_model.dart';

class News {
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    final url = Uri.parse(
        'http://newsapi.org/v2/top-headlines?country=in&apiKey=ecf03c184b43418ab71ff647829ad8b8');
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            //publishedAt: element['publishedAt'],
            content: element['content'],
          );
          news.add(articleModel);
        }
      });
    }
  }
}

class CategoryNews {
  List<ArticleModel> news = [];
  Future<void> getNews(String category) async {
    final url = Uri.parse(
        'http://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=ecf03c184b43418ab71ff647829ad8b8');
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            //publishedAt: element['publishedAt'],
            content: element['content'],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
