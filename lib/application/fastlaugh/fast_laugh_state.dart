part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState({
    required List<Downloads> videosList,
    required bool isLoading,
    required bool isError,
  }) = _FastLaughState;

  factory FastLaughState.initial() {
    return const FastLaughState(
      videosList: [],
      isLoading: true,
      isError: false,
    );
  }
}
