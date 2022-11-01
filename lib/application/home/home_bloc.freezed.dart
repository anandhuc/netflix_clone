// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeHome value) initializeHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeHome value)? initializeHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeHome value)? initializeHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeHomeCopyWith<$Res> {
  factory _$$InitializeHomeCopyWith(
          _$InitializeHome value, $Res Function(_$InitializeHome) then) =
      __$$InitializeHomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeHomeCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitializeHome>
    implements _$$InitializeHomeCopyWith<$Res> {
  __$$InitializeHomeCopyWithImpl(
      _$InitializeHome _value, $Res Function(_$InitializeHome) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeHome implements InitializeHome {
  const _$InitializeHome();

  @override
  String toString() {
    return 'HomeEvent.initializeHome()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeHome,
  }) {
    return initializeHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeHome,
  }) {
    return initializeHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeHome,
    required TResult orElse(),
  }) {
    if (initializeHome != null) {
      return initializeHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeHome value) initializeHome,
  }) {
    return initializeHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeHome value)? initializeHome,
  }) {
    return initializeHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeHome value)? initializeHome,
    required TResult orElse(),
  }) {
    if (initializeHome != null) {
      return initializeHome(this);
    }
    return orElse();
  }
}

abstract class InitializeHome implements HomeEvent {
  const factory InitializeHome() = _$InitializeHome;
}

/// @nodoc
mixin _$HomeState {
  String get stateId => throw _privateConstructorUsedError;
  List<HotAndNewData> get pastYearMovieList =>
      throw _privateConstructorUsedError;
  List<HotAndNewData> get trendingMovieList =>
      throw _privateConstructorUsedError;
  List<HotAndNewData> get trendingTvList => throw _privateConstructorUsedError;
  List<HotAndNewData> get tenseDramasMovieList =>
      throw _privateConstructorUsedError;
  List<HotAndNewData> get southIndiaMovieList =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {String stateId,
      List<HotAndNewData> pastYearMovieList,
      List<HotAndNewData> trendingMovieList,
      List<HotAndNewData> trendingTvList,
      List<HotAndNewData> tenseDramasMovieList,
      List<HotAndNewData> southIndiaMovieList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? pastYearMovieList = null,
    Object? trendingMovieList = null,
    Object? trendingTvList = null,
    Object? tenseDramasMovieList = null,
    Object? southIndiaMovieList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      pastYearMovieList: null == pastYearMovieList
          ? _value.pastYearMovieList
          : pastYearMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trendingMovieList: null == trendingMovieList
          ? _value.trendingMovieList
          : trendingMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trendingTvList: null == trendingTvList
          ? _value.trendingTvList
          : trendingTvList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      tenseDramasMovieList: null == tenseDramasMovieList
          ? _value.tenseDramasMovieList
          : tenseDramasMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      southIndiaMovieList: null == southIndiaMovieList
          ? _value.southIndiaMovieList
          : southIndiaMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stateId,
      List<HotAndNewData> pastYearMovieList,
      List<HotAndNewData> trendingMovieList,
      List<HotAndNewData> trendingTvList,
      List<HotAndNewData> tenseDramasMovieList,
      List<HotAndNewData> southIndiaMovieList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = null,
    Object? pastYearMovieList = null,
    Object? trendingMovieList = null,
    Object? trendingTvList = null,
    Object? tenseDramasMovieList = null,
    Object? southIndiaMovieList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_HomeState(
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      pastYearMovieList: null == pastYearMovieList
          ? _value._pastYearMovieList
          : pastYearMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trendingMovieList: null == trendingMovieList
          ? _value._trendingMovieList
          : trendingMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trendingTvList: null == trendingTvList
          ? _value._trendingTvList
          : trendingTvList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      tenseDramasMovieList: null == tenseDramasMovieList
          ? _value._tenseDramasMovieList
          : tenseDramasMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      southIndiaMovieList: null == southIndiaMovieList
          ? _value._southIndiaMovieList
          : southIndiaMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.stateId,
      required final List<HotAndNewData> pastYearMovieList,
      required final List<HotAndNewData> trendingMovieList,
      required final List<HotAndNewData> trendingTvList,
      required final List<HotAndNewData> tenseDramasMovieList,
      required final List<HotAndNewData> southIndiaMovieList,
      required this.isLoading,
      required this.isError})
      : _pastYearMovieList = pastYearMovieList,
        _trendingMovieList = trendingMovieList,
        _trendingTvList = trendingTvList,
        _tenseDramasMovieList = tenseDramasMovieList,
        _southIndiaMovieList = southIndiaMovieList;

  @override
  final String stateId;
  final List<HotAndNewData> _pastYearMovieList;
  @override
  List<HotAndNewData> get pastYearMovieList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastYearMovieList);
  }

  final List<HotAndNewData> _trendingMovieList;
  @override
  List<HotAndNewData> get trendingMovieList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingMovieList);
  }

  final List<HotAndNewData> _trendingTvList;
  @override
  List<HotAndNewData> get trendingTvList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingTvList);
  }

  final List<HotAndNewData> _tenseDramasMovieList;
  @override
  List<HotAndNewData> get tenseDramasMovieList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenseDramasMovieList);
  }

  final List<HotAndNewData> _southIndiaMovieList;
  @override
  List<HotAndNewData> get southIndiaMovieList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_southIndiaMovieList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'HomeState(stateId: $stateId, pastYearMovieList: $pastYearMovieList, trendingMovieList: $trendingMovieList, trendingTvList: $trendingTvList, tenseDramasMovieList: $tenseDramasMovieList, southIndiaMovieList: $southIndiaMovieList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            const DeepCollectionEquality()
                .equals(other._pastYearMovieList, _pastYearMovieList) &&
            const DeepCollectionEquality()
                .equals(other._trendingMovieList, _trendingMovieList) &&
            const DeepCollectionEquality()
                .equals(other._trendingTvList, _trendingTvList) &&
            const DeepCollectionEquality()
                .equals(other._tenseDramasMovieList, _tenseDramasMovieList) &&
            const DeepCollectionEquality()
                .equals(other._southIndiaMovieList, _southIndiaMovieList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateId,
      const DeepCollectionEquality().hash(_pastYearMovieList),
      const DeepCollectionEquality().hash(_trendingMovieList),
      const DeepCollectionEquality().hash(_trendingTvList),
      const DeepCollectionEquality().hash(_tenseDramasMovieList),
      const DeepCollectionEquality().hash(_southIndiaMovieList),
      isLoading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final String stateId,
      required final List<HotAndNewData> pastYearMovieList,
      required final List<HotAndNewData> trendingMovieList,
      required final List<HotAndNewData> trendingTvList,
      required final List<HotAndNewData> tenseDramasMovieList,
      required final List<HotAndNewData> southIndiaMovieList,
      required final bool isLoading,
      required final bool isError}) = _$_HomeState;

  @override
  String get stateId;
  @override
  List<HotAndNewData> get pastYearMovieList;
  @override
  List<HotAndNewData> get trendingMovieList;
  @override
  List<HotAndNewData> get trendingTvList;
  @override
  List<HotAndNewData> get tenseDramasMovieList;
  @override
  List<HotAndNewData> get southIndiaMovieList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
