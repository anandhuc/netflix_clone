import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/domain/core/failures/main_failures.dart';
import 'package:netflix_project/domain/downloads/download_services.dart';
import 'package:netflix_project/domain/downloads/models/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final DownloadServices _downloadServices;
  DownloadsBloc(this._downloadServices) : super(DownloadsState.initial()) {
    on<GetDownloadImages>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          downloadsFailureOrSuccessOption: none(),
        ),
      );
      final Either<MainFailures, List<Downloads>> downloadsOptions =
          await _downloadServices.getDownloadImages();
      log(downloadsOptions.toString());
      emit(
        downloadsOptions.fold(
          (failure) => state.copyWith(
            isLoading: true,
            downloadsFailureOrSuccessOption: Some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            downloadsFailureOrSuccessOption: Some(right(success)),
            downloads: success,
          ),
        ),
      );
    });
  }
}
