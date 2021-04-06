
import 'package:flutter_cube/Models/Article.dart';

import 'GetApi.dart';

// ignore: camel_case_types
class getPopularArticle{
  bool isLoading = false;
  List<Article> article;


  Future<List<Article>> getFromApi() async{
    isLoading = true;

    GetApi api = GetApi();

    Map<String,dynamic> mapArticles = await api.getArticle();
    if(mapArticles["code"] == 0){
      article = Article.articleFromApi(mapArticles["body"]);
      article.forEach((Article article) {
        print("api : "+article.Title);
      });
    }else{
      isLoading = false;
      print(isLoading);
    }

    print(isLoading);
    return article;
  }

  bool getLoading(){
    return isLoading;
  }
}