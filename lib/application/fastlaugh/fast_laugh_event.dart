part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughEvent with _$FastLaughEvent {
  const factory FastLaughEvent.initialize() = Initialize;
  const factory FastLaughEvent.likeVideos({required int id}) = LikeVideos;
  const factory FastLaughEvent.unLikeVideos({required int id}) = UnLikeVideos;
}
