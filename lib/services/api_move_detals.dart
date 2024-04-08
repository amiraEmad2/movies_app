import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:movies_app/models/movies_details.dart';

class MovieDetailsApi{
  static Future <MovieDetailsModel> getMovieDetails(int movie_id, [String movieName = '']) async {
    Uri url = Uri.http(MovieConstant.baseUrl, '/3/movie/${movie_id}',
        {'api_key': MovieConstant.apiKey});
    try {
      var response= await http.get(url);
      var responseBody = response.body;
      var json = jsonDecode(responseBody);
      return MovieDetailsModel.fromJson(json);
    } on Exception catch (e) {
      throw e;
    }

  }
}


class MovieConstant{
  static const String apiKey ='9f85500ba6ab01fcf71fc13b24da6acd';
  static const String baseUrl = 'api.themoviedb.org';

}