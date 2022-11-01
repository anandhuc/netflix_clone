import 'package:dartz/dartz.dart';
import 'package:netflix_project/domain/core/failures/main_failures.dart';
import 'package:netflix_project/domain/search/models/search_response.dart';

abstract class SearchService {
  Future<Either<MainFailures, SearchResponse>> searchMovie({
    required String movieQuery,
  });
}
