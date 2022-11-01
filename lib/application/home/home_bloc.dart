import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/domain/core/failures/main_failures.dart';
import 'package:netflix_project/domain/new_and_hot/models/new_and_hot.dart';
import 'package:netflix_project/domain/new_and_hot/new_and_hot_services.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final NewAndHotServices _homeServices;
  HomeBloc(this._homeServices) : super(HomeState.initial()) {
    //
    on<InitializeHome>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
        ),
      );
      final _movieResult = await _homeServices.getnewAndHotMovieData();
      final _tvResults = await _homeServices.getnewAndHotTvData();
      final _state1 = _movieResult.fold(
        (MainFailures failures) {
          return HomeState(
            stateId: DateTime.now().microsecondsSinceEpoch.toString(),
            pastYearMovieList: [],
            trendingMovieList: [],
            trendingTvList: [],
            tenseDramasMovieList: [],
            southIndiaMovieList: [],
            isLoading: false,
            isError: true,
          );
        },
        (NewAndHotResp success) {
          final pastYear = success.results;
          pastYear.shuffle();
          final trending = success.results;
          trending.shuffle();
          final tenseDrama = success.results;
          tenseDrama.shuffle();
          final southIndian = success.results;
          southIndian.shuffle();

          return HomeState(
            stateId: DateTime.now().microsecondsSinceEpoch.toString(),
            pastYearMovieList: pastYear,
            trendingMovieList: trending,
            trendingTvList: state.trendingTvList,
            tenseDramasMovieList: tenseDrama,
            southIndiaMovieList: southIndian,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(_state1);

      final _state2 = _tvResults.fold(
        (MainFailures failures) {
          return HomeState(
            stateId: DateTime.now().microsecondsSinceEpoch.toString(),
            pastYearMovieList: [],
            trendingMovieList: [],
            trendingTvList: [],
            tenseDramasMovieList: [],
            southIndiaMovieList: [],
            isLoading: false,
            isError: true,
          );
        },
        (NewAndHotResp success) {
          final top10List = success.results;
          return HomeState(
            stateId: DateTime.now().microsecondsSinceEpoch.toString(),
            pastYearMovieList: state.pastYearMovieList,
            trendingMovieList: state.trendingMovieList,
            trendingTvList: top10List,
            tenseDramasMovieList: state.tenseDramasMovieList,
            southIndiaMovieList: state.southIndiaMovieList,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(_state2);
    });
  }
}
