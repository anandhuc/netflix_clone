import 'package:dartz/dartz.dart';
import 'package:netflix_project/domain/core/failures/main_failures.dart';
import 'package:netflix_project/domain/new_and_hot/models/new_and_hot.dart';

abstract class NewAndHotServices {
  Future<Either<MainFailures, NewAndHotResp>> getnewAndHotMovieData();
  Future<Either<MainFailures, NewAndHotResp>> getnewAndHotTvData();
}
