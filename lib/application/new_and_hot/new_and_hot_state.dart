part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotState with _$NewAndHotState {
  const factory NewAndHotState({
    required List<HotAndNewData> comingSoonList,
    required List<HotAndNewData> everyOneWatchingList,
    required bool isLoding,
    required bool isError,
  }) = _NewAndHotState;

  factory NewAndHotState.initial() {
    return const NewAndHotState(
      comingSoonList: [],
      everyOneWatchingList: [],
      isLoding: false,
      isError: false,
    );
  }
}
