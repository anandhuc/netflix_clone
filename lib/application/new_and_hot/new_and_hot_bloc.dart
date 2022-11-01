import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/domain/core/failures/main_failures.dart';
import 'package:netflix_project/domain/new_and_hot/models/new_and_hot.dart';
import 'package:netflix_project/domain/new_and_hot/new_and_hot_services.dart';

part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';
part 'new_and_hot_bloc.freezed.dart';

@injectable
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final NewAndHotServices _newAndHotServices;
  NewAndHotBloc(this._newAndHotServices) : super(NewAndHotState.initial()) {
    on<ComingSoonInitialize>((event, emit) async {
      //Load UI
      emit(
        const NewAndHotState(
          comingSoonList: [],
          everyOneWatchingList: [],
          isLoding: true,
          isError: false,
        ),
      );

      // Get NewAndHotData Movie
      final _result = await _newAndHotServices.getnewAndHotMovieData();
      final _newState = _result.fold(
        (MainFailures failures) => const NewAndHotState(
          comingSoonList: [],
          everyOneWatchingList: [],
          isLoding: false,
          isError: true,
        ),
        (NewAndHotResp success) => NewAndHotState(
          comingSoonList: success.results,
          everyOneWatchingList: state.everyOneWatchingList,
          isLoding: false,
          isError: false,
        ),
      );

      //Load UI to the sceen
      emit(_newState);
    });

    // Get NewAndHotData Tv
    on<EveryOneWatchingInitialize>((event, emit) async {
      //Load UI
      emit(
        const NewAndHotState(
          comingSoonList: [],
          everyOneWatchingList: [],
          isLoding: true,
          isError: false,
        ),
      );

      // Get NewAndHotData Movie
      final _result = await _newAndHotServices.getnewAndHotTvData();
      final _newState = _result.fold(
        (MainFailures failures) => const NewAndHotState(
          comingSoonList: [],
          everyOneWatchingList: [],
          isLoding: false,
          isError: true,
        ),
        (NewAndHotResp success) => NewAndHotState(
          comingSoonList: state.comingSoonList,
          everyOneWatchingList: success.results,
          isLoding: false,
          isError: false,
        ),
      );

      //Load UI to the sceen
      emit(_newState);
    });
  }
}
