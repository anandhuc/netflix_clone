//Whatever api calls come from our app
import 'package:dartz/dartz.dart';
import 'package:netflix_project/domain/core/failures/main_failures.dart';
import 'package:netflix_project/domain/downloads/models/downloads.dart';

abstract class DownloadServices {
  Future<Either<MainFailures, List<Downloads>>> getDownloadImages();
}
