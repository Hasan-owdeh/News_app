import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  // This class will handle the API calls and data fetching for the news application.
  //this class contains methods to fetch news articles from the News API using the Dio package for making HTTP requests.
  //هاض الكلاس مجمع كل ال methods الي الها علاقة في الاخبار

  final Dio dio;

  NewsService(this.dio);
// using list of objects instead of list of maps to make it easier to work with the data and to avoid null safety issues
  Future<List<ArticleModel>> getNews() async {
    //getting the news articles from the API using the Dio package 
    Response response = await dio.get(
      "https://newsapi.org/v2/top-headlines",
      // queryParameters is a map of key-value pairs that will be appended to the URL as query parameters. In this case, we are passing the API key, country, and category as query parameters to the API endpoint.
      queryParameters: {
        "apiKey": "0303e6f8be094647af719ac1354d4d09",
        "country": "us",
        "category": "technology",
      },
    );
    // response.data بترجع  بيانات على شكل list<dynamic> and map<String, dynamic>
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articlesData = jsonData['articles'];

    List<ArticleModel> articleslist = [];
    // in this way we convert the list of dynamic articles data into a list of ArticleModel objects, which can be used in the application to display news articles.
    for (var article in articlesData) {
      ArticleModel articlemodel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
      );
      //then we add the articlemodel to the articleslist
      articleslist.add(articlemodel);
    }
    // Finally, we return the list of ArticleModel objects to be used in the application.
    return articleslist;
  }
}
