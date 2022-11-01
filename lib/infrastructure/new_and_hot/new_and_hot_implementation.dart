import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/domain/core/api_end_points.dart';
import 'package:netflix_project/domain/new_and_hot/models/new_and_hot.dart';
import 'package:netflix_project/domain/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_project/domain/new_and_hot/new_and_hot_services.dart';

@LazySingleton(as: NewAndHotServices)
class NewAndHotImplementation implements NewAndHotServices {
  @override
  Future<Either<MainFailures, NewAndHotResp>> getnewAndHotMovieData() async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.newAndHotMovie,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.data.toString());

        final result = NewAndHotResp.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, NewAndHotResp>> getnewAndHotTvData() async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.newAndHotTv,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.data.toString());
        final result = NewAndHotResp.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }
}
