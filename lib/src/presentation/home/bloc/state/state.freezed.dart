// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GeneralEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchGeneralData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchGeneralData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchGeneralData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGeneralData value) fetchGeneralData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGeneralData value)? fetchGeneralData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGeneralData value)? fetchGeneralData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralEventCopyWith<$Res> {
  factory $GeneralEventCopyWith(
          GeneralEvent value, $Res Function(GeneralEvent) then) =
      _$GeneralEventCopyWithImpl<$Res, GeneralEvent>;
}

/// @nodoc
class _$GeneralEventCopyWithImpl<$Res, $Val extends GeneralEvent>
    implements $GeneralEventCopyWith<$Res> {
  _$GeneralEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchGeneralDataImplCopyWith<$Res> {
  factory _$$FetchGeneralDataImplCopyWith(_$FetchGeneralDataImpl value,
          $Res Function(_$FetchGeneralDataImpl) then) =
      __$$FetchGeneralDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchGeneralDataImplCopyWithImpl<$Res>
    extends _$GeneralEventCopyWithImpl<$Res, _$FetchGeneralDataImpl>
    implements _$$FetchGeneralDataImplCopyWith<$Res> {
  __$$FetchGeneralDataImplCopyWithImpl(_$FetchGeneralDataImpl _value,
      $Res Function(_$FetchGeneralDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchGeneralDataImpl implements FetchGeneralData {
  const _$FetchGeneralDataImpl();

  @override
  String toString() {
    return 'GeneralEvent.fetchGeneralData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchGeneralDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchGeneralData,
  }) {
    return fetchGeneralData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchGeneralData,
  }) {
    return fetchGeneralData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchGeneralData,
    required TResult orElse(),
  }) {
    if (fetchGeneralData != null) {
      return fetchGeneralData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGeneralData value) fetchGeneralData,
  }) {
    return fetchGeneralData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGeneralData value)? fetchGeneralData,
  }) {
    return fetchGeneralData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGeneralData value)? fetchGeneralData,
    required TResult orElse(),
  }) {
    if (fetchGeneralData != null) {
      return fetchGeneralData(this);
    }
    return orElse();
  }
}

abstract class FetchGeneralData implements GeneralEvent {
  const factory FetchGeneralData() = _$FetchGeneralDataImpl;
}

/// @nodoc
mixin _$GeneralState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<General> generalData) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<General> generalData)? loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<General> generalData)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralInitial value) initial,
    required TResult Function(GeneralLoading value) loading,
    required TResult Function(GeneralEmpty value) empty,
    required TResult Function(GeneralLoaded value) loaded,
    required TResult Function(GeneralError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralInitial value)? initial,
    TResult? Function(GeneralLoading value)? loading,
    TResult? Function(GeneralEmpty value)? empty,
    TResult? Function(GeneralLoaded value)? loaded,
    TResult? Function(GeneralError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralInitial value)? initial,
    TResult Function(GeneralLoading value)? loading,
    TResult Function(GeneralEmpty value)? empty,
    TResult Function(GeneralLoaded value)? loaded,
    TResult Function(GeneralError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralStateCopyWith<$Res> {
  factory $GeneralStateCopyWith(
          GeneralState value, $Res Function(GeneralState) then) =
      _$GeneralStateCopyWithImpl<$Res, GeneralState>;
}

/// @nodoc
class _$GeneralStateCopyWithImpl<$Res, $Val extends GeneralState>
    implements $GeneralStateCopyWith<$Res> {
  _$GeneralStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GeneralInitialImplCopyWith<$Res> {
  factory _$$GeneralInitialImplCopyWith(_$GeneralInitialImpl value,
          $Res Function(_$GeneralInitialImpl) then) =
      __$$GeneralInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeneralInitialImplCopyWithImpl<$Res>
    extends _$GeneralStateCopyWithImpl<$Res, _$GeneralInitialImpl>
    implements _$$GeneralInitialImplCopyWith<$Res> {
  __$$GeneralInitialImplCopyWithImpl(
      _$GeneralInitialImpl _value, $Res Function(_$GeneralInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GeneralInitialImpl implements GeneralInitial {
  const _$GeneralInitialImpl();

  @override
  String toString() {
    return 'GeneralState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GeneralInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<General> generalData) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<General> generalData)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<General> generalData)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralInitial value) initial,
    required TResult Function(GeneralLoading value) loading,
    required TResult Function(GeneralEmpty value) empty,
    required TResult Function(GeneralLoaded value) loaded,
    required TResult Function(GeneralError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralInitial value)? initial,
    TResult? Function(GeneralLoading value)? loading,
    TResult? Function(GeneralEmpty value)? empty,
    TResult? Function(GeneralLoaded value)? loaded,
    TResult? Function(GeneralError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralInitial value)? initial,
    TResult Function(GeneralLoading value)? loading,
    TResult Function(GeneralEmpty value)? empty,
    TResult Function(GeneralLoaded value)? loaded,
    TResult Function(GeneralError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GeneralInitial implements GeneralState {
  const factory GeneralInitial() = _$GeneralInitialImpl;
}

/// @nodoc
abstract class _$$GeneralLoadingImplCopyWith<$Res> {
  factory _$$GeneralLoadingImplCopyWith(_$GeneralLoadingImpl value,
          $Res Function(_$GeneralLoadingImpl) then) =
      __$$GeneralLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeneralLoadingImplCopyWithImpl<$Res>
    extends _$GeneralStateCopyWithImpl<$Res, _$GeneralLoadingImpl>
    implements _$$GeneralLoadingImplCopyWith<$Res> {
  __$$GeneralLoadingImplCopyWithImpl(
      _$GeneralLoadingImpl _value, $Res Function(_$GeneralLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GeneralLoadingImpl implements GeneralLoading {
  const _$GeneralLoadingImpl();

  @override
  String toString() {
    return 'GeneralState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GeneralLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<General> generalData) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<General> generalData)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<General> generalData)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralInitial value) initial,
    required TResult Function(GeneralLoading value) loading,
    required TResult Function(GeneralEmpty value) empty,
    required TResult Function(GeneralLoaded value) loaded,
    required TResult Function(GeneralError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralInitial value)? initial,
    TResult? Function(GeneralLoading value)? loading,
    TResult? Function(GeneralEmpty value)? empty,
    TResult? Function(GeneralLoaded value)? loaded,
    TResult? Function(GeneralError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralInitial value)? initial,
    TResult Function(GeneralLoading value)? loading,
    TResult Function(GeneralEmpty value)? empty,
    TResult Function(GeneralLoaded value)? loaded,
    TResult Function(GeneralError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GeneralLoading implements GeneralState {
  const factory GeneralLoading() = _$GeneralLoadingImpl;
}

/// @nodoc
abstract class _$$GeneralEmptyImplCopyWith<$Res> {
  factory _$$GeneralEmptyImplCopyWith(
          _$GeneralEmptyImpl value, $Res Function(_$GeneralEmptyImpl) then) =
      __$$GeneralEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeneralEmptyImplCopyWithImpl<$Res>
    extends _$GeneralStateCopyWithImpl<$Res, _$GeneralEmptyImpl>
    implements _$$GeneralEmptyImplCopyWith<$Res> {
  __$$GeneralEmptyImplCopyWithImpl(
      _$GeneralEmptyImpl _value, $Res Function(_$GeneralEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GeneralEmptyImpl implements GeneralEmpty {
  const _$GeneralEmptyImpl();

  @override
  String toString() {
    return 'GeneralState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GeneralEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<General> generalData) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<General> generalData)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<General> generalData)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralInitial value) initial,
    required TResult Function(GeneralLoading value) loading,
    required TResult Function(GeneralEmpty value) empty,
    required TResult Function(GeneralLoaded value) loaded,
    required TResult Function(GeneralError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralInitial value)? initial,
    TResult? Function(GeneralLoading value)? loading,
    TResult? Function(GeneralEmpty value)? empty,
    TResult? Function(GeneralLoaded value)? loaded,
    TResult? Function(GeneralError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralInitial value)? initial,
    TResult Function(GeneralLoading value)? loading,
    TResult Function(GeneralEmpty value)? empty,
    TResult Function(GeneralLoaded value)? loaded,
    TResult Function(GeneralError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class GeneralEmpty implements GeneralState {
  const factory GeneralEmpty() = _$GeneralEmptyImpl;
}

/// @nodoc
abstract class _$$GeneralLoadedImplCopyWith<$Res> {
  factory _$$GeneralLoadedImplCopyWith(
          _$GeneralLoadedImpl value, $Res Function(_$GeneralLoadedImpl) then) =
      __$$GeneralLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<General> generalData});
}

/// @nodoc
class __$$GeneralLoadedImplCopyWithImpl<$Res>
    extends _$GeneralStateCopyWithImpl<$Res, _$GeneralLoadedImpl>
    implements _$$GeneralLoadedImplCopyWith<$Res> {
  __$$GeneralLoadedImplCopyWithImpl(
      _$GeneralLoadedImpl _value, $Res Function(_$GeneralLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generalData = null,
  }) {
    return _then(_$GeneralLoadedImpl(
      null == generalData
          ? _value._generalData
          : generalData // ignore: cast_nullable_to_non_nullable
              as List<General>,
    ));
  }
}

/// @nodoc

class _$GeneralLoadedImpl implements GeneralLoaded {
  const _$GeneralLoadedImpl(final List<General> generalData)
      : _generalData = generalData;

  final List<General> _generalData;
  @override
  List<General> get generalData {
    if (_generalData is EqualUnmodifiableListView) return _generalData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_generalData);
  }

  @override
  String toString() {
    return 'GeneralState.loaded(generalData: $generalData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._generalData, _generalData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_generalData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralLoadedImplCopyWith<_$GeneralLoadedImpl> get copyWith =>
      __$$GeneralLoadedImplCopyWithImpl<_$GeneralLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<General> generalData) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(generalData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<General> generalData)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(generalData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<General> generalData)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(generalData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralInitial value) initial,
    required TResult Function(GeneralLoading value) loading,
    required TResult Function(GeneralEmpty value) empty,
    required TResult Function(GeneralLoaded value) loaded,
    required TResult Function(GeneralError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralInitial value)? initial,
    TResult? Function(GeneralLoading value)? loading,
    TResult? Function(GeneralEmpty value)? empty,
    TResult? Function(GeneralLoaded value)? loaded,
    TResult? Function(GeneralError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralInitial value)? initial,
    TResult Function(GeneralLoading value)? loading,
    TResult Function(GeneralEmpty value)? empty,
    TResult Function(GeneralLoaded value)? loaded,
    TResult Function(GeneralError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GeneralLoaded implements GeneralState {
  const factory GeneralLoaded(final List<General> generalData) =
      _$GeneralLoadedImpl;

  List<General> get generalData;
  @JsonKey(ignore: true)
  _$$GeneralLoadedImplCopyWith<_$GeneralLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeneralErrorImplCopyWith<$Res> {
  factory _$$GeneralErrorImplCopyWith(
          _$GeneralErrorImpl value, $Res Function(_$GeneralErrorImpl) then) =
      __$$GeneralErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GeneralErrorImplCopyWithImpl<$Res>
    extends _$GeneralStateCopyWithImpl<$Res, _$GeneralErrorImpl>
    implements _$$GeneralErrorImplCopyWith<$Res> {
  __$$GeneralErrorImplCopyWithImpl(
      _$GeneralErrorImpl _value, $Res Function(_$GeneralErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GeneralErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GeneralErrorImpl implements GeneralError {
  const _$GeneralErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'GeneralState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralErrorImplCopyWith<_$GeneralErrorImpl> get copyWith =>
      __$$GeneralErrorImplCopyWithImpl<_$GeneralErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<General> generalData) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<General> generalData)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<General> generalData)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralInitial value) initial,
    required TResult Function(GeneralLoading value) loading,
    required TResult Function(GeneralEmpty value) empty,
    required TResult Function(GeneralLoaded value) loaded,
    required TResult Function(GeneralError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralInitial value)? initial,
    TResult? Function(GeneralLoading value)? loading,
    TResult? Function(GeneralEmpty value)? empty,
    TResult? Function(GeneralLoaded value)? loaded,
    TResult? Function(GeneralError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralInitial value)? initial,
    TResult Function(GeneralLoading value)? loading,
    TResult Function(GeneralEmpty value)? empty,
    TResult Function(GeneralLoaded value)? loaded,
    TResult Function(GeneralError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GeneralError implements GeneralState {
  const factory GeneralError(final String errorMessage) = _$GeneralErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$GeneralErrorImplCopyWith<_$GeneralErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
