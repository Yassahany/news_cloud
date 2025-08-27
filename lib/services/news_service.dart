import 'package:dio/dio.dart';
import 'package:new_app/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=31570d79ce5344c29ecaef9e4615705f&category=$category',
      );
      Map<String, dynamic> jsonResponse = response.data;
      List<dynamic> articles = jsonResponse['articles'];

      List<ArticleModel> articlesObjs = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.formJson(article);
        articlesObjs.add(articleModel);
      }
      return articlesObjs;
    } catch (e) {
      return [];
    }
  }
}
