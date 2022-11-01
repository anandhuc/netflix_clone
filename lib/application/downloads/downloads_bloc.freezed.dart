// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDownloadImages value) getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDownloadImages value)? getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDownloadImages value)? getDownloadImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res, DownloadsEvent>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res, $Val extends DownloadsEvent>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDownloadImagesCopyWith<$Res> {
  factory _$$GetDownloadImagesCopyWith(
          _$GetDownloadImages value, $Res Function(_$GetDownloadImages) then) =
      __$$GetDownloadImagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDownloadImagesCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res, _$GetDownloadImages>
    implements _$$GetDownloadImagesCopyWith<$Res> {
  __$$GetDownloadImagesCopyWithImpl(
      _$GetDownloadImages _value, $Res Function(_$GetDownloadImages) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDownloadImages implements GetDownloadImages {
  const _$GetDownloadImages();

  @override
  String toString() {
    return 'DownloadsEvent.getDownloadImages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDownloadImages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadImages,
  }) {
    return getDownloadImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadImages,
  }) {
    return getDownloadImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadImages,
    required TResult orElse(),
  }) {
    if (getDownloadImages != null) {
      return getDownloadImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDownloadImages value) getDownloadImages,
  }) {
    return getDownloadImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDownloadImages value)? getDownloadImages,
  }) {
    return getDownloadImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDownloadImages value)? getDownloadImages,
    required TResult orElse(),
  }) {
    if (getDownloadImages != null) {
      return getDownloadImages(this);
    }
    return orElse();
  }
}

abstract class GetDownloadImages implements DownloadsEvent {
  const factory GetDownloadImages() = _$GetDownloadImages;
}

/// @nodoc
mixin _$DownloadsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<Downloads>>>
      get downloadsFailureOrSuccessOption => throw _privateConstructorUsedError;
  List<Downloads> get downloads => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadsStateCopyWith<DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsStateCopyWith<$Res> {
  factory $DownloadsStateCopyWith(
          DownloadsState value, $Res Function(DownloadsState) then) =
      _$DownloadsStateCopyWithImpl<$Res, DownloadsState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<MainFailures, List<Downloads>>>
          downloadsFailureOrSuccessOption,
      List<Downloads> downloads});
}

/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res, $Val extends DownloadsState>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downloadsFailureOrSuccessOption = null,
    Object? downloads = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadsFailureOrSuccessOption: null == downloadsFailureOrSuccessOption
          ? _value.downloadsFailureOrSuccessOption
          : downloadsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<Downloads>>>,
      downloads: null == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownloadsStateCopyWith<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  factory _$$_DownloadsStateCopyWith(
          _$_DownloadsState value, $Res Function(_$_DownloadsState) then) =
      __$$_DownloadsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<MainFailures, List<Downloads>>>
          downloadsFailureOrSuccessOption,
      List<Downloads> downloads});
}

/// @nodoc
class __$$_DownloadsStateCopyWithImpl<$Res>
    extends _$DownloadsStateCopyWithImpl<$Res, _$_DownloadsState>
    implements _$$_DownloadsStateCopyWith<$Res> {
  __$$_DownloadsStateCopyWithImpl(
      _$_DownloadsState _value, $Res Function(_$_DownloadsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downloadsFailureOrSuccessOption = null,
    Object? downloads = null,
  }) {
    return _then(_$_DownloadsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadsFailureOrSuccessOption: null == downloadsFailureOrSuccessOption
          ? _value.downloadsFailureOrSuccessOption
          : downloadsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<Downloads>>>,
      downloads: null == downloads
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
    ));
  }
}

/// @nodoc

class _$_DownloadsState implements _DownloadsState {
  const _$_DownloadsState(
      {required this.isLoading,
      required this.downloadsFailureOrSuccessOption,
      required final List<Downloads> downloads})
      : _downloads = downloads;

  @override
  final bool isLoading;
  @override
  final Option<Either<MainFailures, List<Downloads>>>
      downloadsFailureOrSuccessOption;
  final List<Downloads> _downloads;
  @override
  List<Downloads> get downloads {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloads);
  }

  @override
  String toString() {
    return 'DownloadsState(isLoading: $isLoading, downloadsFailureOrSuccessOption: $downloadsFailureOrSuccessOption, downloads: $downloads)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.downloadsFailureOrSuccessOption,
                    downloadsFailureOrSuccessOption) ||
                other.downloadsFailureOrSuccessOption ==
                    downloadsFailureOrSuccessOption) &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      downloadsFailureOrSuccessOption,
      const DeepCollectionEquality().hash(_downloads));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadsStateCopyWith<_$_DownloadsState> get copyWith =>
      __$$_DownloadsStateCopyWithImpl<_$_DownloadsState>(this, _$identity);
}

abstract class _DownloadsState implements DownloadsState {
  const factory _DownloadsState(
      {required final bool isLoading,
      required final Option<Either<MainFailures, List<Downloads>>>
          downloadsFailureOrSuccessOption,
      required final List<Downloads> downloads}) = _$_DownloadsState;

  @override
  bool get isLoading;
  @override
  Option<Either<MainFailures, List<Downloads>>>
      get downloadsFailureOrSuccessOption;
  @override
  List<Downloads> get downloads;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadsStateCopyWith<_$_DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}
