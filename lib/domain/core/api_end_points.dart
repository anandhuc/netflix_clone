import 'package:netflix_project/core/constant_strings.dart';
import 'package:netflix_project/infrastructure/apikey.dart';


class ApiEndPoints {
  static const downloads = '$kBaseUrl/trending/all/day?api_key=$apiKey';
  static const search = '$kBaseUrl/search/movie?api_key=$apiKey';
  static const newAndHotMovie = '$kBaseUrl/discover/movie?api_key=$apiKey';
  static const newAndHotTv = '$kBaseUrl/discover/tv?api_key=$apiKey';
}
