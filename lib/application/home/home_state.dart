part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String stateId,
    required List<HotAndNewData> pastYearMovieList,
    required List<HotAndNewData> trendingMovieList,
    required List<HotAndNewData> trendingTvList,
    required List<HotAndNewData> tenseDramasMovieList,
    required List<HotAndNewData> southIndiaMovieList,
    required bool isLoading,
    required bool isError,
  }) = _HomeState;
  factory HomeState.initial() {
    return const HomeState(
      stateId: '0',
      pastYearMovieList: [],
      trendingMovieList: [],
      trendingTvList: [],
      tenseDramasMovieList: [],
      southIndiaMovieList: [],
      isLoading: false,
      isError: false,
    );
  }
}
