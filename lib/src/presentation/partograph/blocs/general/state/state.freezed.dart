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
mixin _$GeneralItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchGeneralData,
    required TResult Function(
            int partographId, String name, String recordNumber, DateTime date)
        updateGeneralData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchGeneralData,
    TResult? Function(
            int partographId, String name, String recordNumber, DateTime date)?
        updateGeneralData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchGeneralData,
    TResult Function(
            int partographId, String name, String recordNumber, DateTime date)?
        updateGeneralData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGeneralData value) fetchGeneralData,
    required TResult Function(UpdateGeneralData value) updateGeneralData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGeneralData value)? fetchGeneralData,
    TResult? Function(UpdateGeneralData value)? updateGeneralData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGeneralData value)? fetchGeneralData,
    TResult Function(UpdateGeneralData value)? updateGeneralData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralItemEventCopyWith<$Res> {
  factory $GeneralItemEventCopyWith(
          GeneralItemEvent value, $Res Function(GeneralItemEvent) then) =
      _$GeneralItemEventCopyWithImpl<$Res, GeneralItemEvent>;
}

/// @nodoc
class _$GeneralItemEventCopyWithImpl<$Res, $Val extends GeneralItemEvent>
    implements $GeneralItemEventCopyWith<$Res> {
  _$GeneralItemEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$FetchGeneralDataImplCopyWithImpl<$Res>
    extends _$GeneralItemEventCopyWithImpl<$Res, _$FetchGeneralDataImpl>
    implements _$$FetchGeneralDataImplCopyWith<$Res> {
  __$$FetchGeneralDataImplCopyWithImpl(_$FetchGeneralDataImpl _value,
      $Res Function(_$FetchGeneralDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchGeneralDataImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchGeneralDataImpl implements FetchGeneralData {
  const _$FetchGeneralDataImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'GeneralItemEvent.fetchGeneralData(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchGeneralDataImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchGeneralDataImplCopyWith<_$FetchGeneralDataImpl> get copyWith =>
      __$$FetchGeneralDataImplCopyWithImpl<_$FetchGeneralDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchGeneralData,
    required TResult Function(
            int partographId, String name, String recordNumber, DateTime date)
        updateGeneralData,
  }) {
    return fetchGeneralData(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchGeneralData,
    TResult? Function(
            int partographId, String name, String recordNumber, DateTime date)?
        updateGeneralData,
  }) {
    return fetchGeneralData?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchGeneralData,
    TResult Function(
            int partographId, String name, String recordNumber, DateTime date)?
        updateGeneralData,
    required TResult orElse(),
  }) {
    if (fetchGeneralData != null) {
      return fetchGeneralData(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGeneralData value) fetchGeneralData,
    required TResult Function(UpdateGeneralData value) updateGeneralData,
  }) {
    return fetchGeneralData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGeneralData value)? fetchGeneralData,
    TResult? Function(UpdateGeneralData value)? updateGeneralData,
  }) {
    return fetchGeneralData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGeneralData value)? fetchGeneralData,
    TResult Function(UpdateGeneralData value)? updateGeneralData,
    required TResult orElse(),
  }) {
    if (fetchGeneralData != null) {
      return fetchGeneralData(this);
    }
    return orElse();
  }
}

abstract class FetchGeneralData implements GeneralItemEvent {
  const factory FetchGeneralData(final int id) = _$FetchGeneralDataImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$FetchGeneralDataImplCopyWith<_$FetchGeneralDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateGeneralDataImplCopyWith<$Res> {
  factory _$$UpdateGeneralDataImplCopyWith(_$UpdateGeneralDataImpl value,
          $Res Function(_$UpdateGeneralDataImpl) then) =
      __$$UpdateGeneralDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int partographId, String name, String recordNumber, DateTime date});
}

/// @nodoc
class __$$UpdateGeneralDataImplCopyWithImpl<$Res>
    extends _$GeneralItemEventCopyWithImpl<$Res, _$UpdateGeneralDataImpl>
    implements _$$UpdateGeneralDataImplCopyWith<$Res> {
  __$$UpdateGeneralDataImplCopyWithImpl(_$UpdateGeneralDataImpl _value,
      $Res Function(_$UpdateGeneralDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? name = null,
    Object? recordNumber = null,
    Object? date = null,
  }) {
    return _then(_$UpdateGeneralDataImpl(
      null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == recordNumber
          ? _value.recordNumber
          : recordNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateGeneralDataImpl implements UpdateGeneralData {
  const _$UpdateGeneralDataImpl(
      this.partographId, this.name, this.recordNumber, this.date);

  @override
  final int partographId;
  @override
  final String name;
  @override
  final String recordNumber;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'GeneralItemEvent.updateGeneralData(partographId: $partographId, name: $name, recordNumber: $recordNumber, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGeneralDataImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.recordNumber, recordNumber) ||
                other.recordNumber == recordNumber) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, partographId, name, recordNumber, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGeneralDataImplCopyWith<_$UpdateGeneralDataImpl> get copyWith =>
      __$$UpdateGeneralDataImplCopyWithImpl<_$UpdateGeneralDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchGeneralData,
    required TResult Function(
            int partographId, String name, String recordNumber, DateTime date)
        updateGeneralData,
  }) {
    return updateGeneralData(partographId, name, recordNumber, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchGeneralData,
    TResult? Function(
            int partographId, String name, String recordNumber, DateTime date)?
        updateGeneralData,
  }) {
    return updateGeneralData?.call(partographId, name, recordNumber, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchGeneralData,
    TResult Function(
            int partographId, String name, String recordNumber, DateTime date)?
        updateGeneralData,
    required TResult orElse(),
  }) {
    if (updateGeneralData != null) {
      return updateGeneralData(partographId, name, recordNumber, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchGeneralData value) fetchGeneralData,
    required TResult Function(UpdateGeneralData value) updateGeneralData,
  }) {
    return updateGeneralData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchGeneralData value)? fetchGeneralData,
    TResult? Function(UpdateGeneralData value)? updateGeneralData,
  }) {
    return updateGeneralData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchGeneralData value)? fetchGeneralData,
    TResult Function(UpdateGeneralData value)? updateGeneralData,
    required TResult orElse(),
  }) {
    if (updateGeneralData != null) {
      return updateGeneralData(this);
    }
    return orElse();
  }
}

abstract class UpdateGeneralData implements GeneralItemEvent {
  const factory UpdateGeneralData(final int partographId, final String name,
      final String recordNumber, final DateTime date) = _$UpdateGeneralDataImpl;

  int get partographId;
  String get name;
  String get recordNumber;
  DateTime get date;
  @JsonKey(ignore: true)
  _$$UpdateGeneralDataImplCopyWith<_$UpdateGeneralDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GeneralItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(General generalData) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(General generalData)? loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(General generalData)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralItemInitial value) initial,
    required TResult Function(GeneralItemLoading value) loading,
    required TResult Function(GeneralItemEmpty value) empty,
    required TResult Function(GeneralItemLoaded value) loaded,
    required TResult Function(GeneralItemError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralItemInitial value)? initial,
    TResult? Function(GeneralItemLoading value)? loading,
    TResult? Function(GeneralItemEmpty value)? empty,
    TResult? Function(GeneralItemLoaded value)? loaded,
    TResult? Function(GeneralItemError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralItemInitial value)? initial,
    TResult Function(GeneralItemLoading value)? loading,
    TResult Function(GeneralItemEmpty value)? empty,
    TResult Function(GeneralItemLoaded value)? loaded,
    TResult Function(GeneralItemError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralItemStateCopyWith<$Res> {
  factory $GeneralItemStateCopyWith(
          GeneralItemState value, $Res Function(GeneralItemState) then) =
      _$GeneralItemStateCopyWithImpl<$Res, GeneralItemState>;
}

/// @nodoc
class _$GeneralItemStateCopyWithImpl<$Res, $Val extends GeneralItemState>
    implements $GeneralItemStateCopyWith<$Res> {
  _$GeneralItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GeneralItemInitialImplCopyWith<$Res> {
  factory _$$GeneralItemInitialImplCopyWith(_$GeneralItemInitialImpl value,
          $Res Function(_$GeneralItemInitialImpl) then) =
      __$$GeneralItemInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeneralItemInitialImplCopyWithImpl<$Res>
    extends _$GeneralItemStateCopyWithImpl<$Res, _$GeneralItemInitialImpl>
    implements _$$GeneralItemInitialImplCopyWith<$Res> {
  __$$GeneralItemInitialImplCopyWithImpl(_$GeneralItemInitialImpl _value,
      $Res Function(_$GeneralItemInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GeneralItemInitialImpl implements GeneralItemInitial {
  const _$GeneralItemInitialImpl();

  @override
  String toString() {
    return 'GeneralItemState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GeneralItemInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(General generalData) loaded,
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
    TResult? Function(General generalData)? loaded,
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
    TResult Function(General generalData)? loaded,
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
    required TResult Function(GeneralItemInitial value) initial,
    required TResult Function(GeneralItemLoading value) loading,
    required TResult Function(GeneralItemEmpty value) empty,
    required TResult Function(GeneralItemLoaded value) loaded,
    required TResult Function(GeneralItemError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralItemInitial value)? initial,
    TResult? Function(GeneralItemLoading value)? loading,
    TResult? Function(GeneralItemEmpty value)? empty,
    TResult? Function(GeneralItemLoaded value)? loaded,
    TResult? Function(GeneralItemError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralItemInitial value)? initial,
    TResult Function(GeneralItemLoading value)? loading,
    TResult Function(GeneralItemEmpty value)? empty,
    TResult Function(GeneralItemLoaded value)? loaded,
    TResult Function(GeneralItemError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GeneralItemInitial implements GeneralItemState {
  const factory GeneralItemInitial() = _$GeneralItemInitialImpl;
}

/// @nodoc
abstract class _$$GeneralItemLoadingImplCopyWith<$Res> {
  factory _$$GeneralItemLoadingImplCopyWith(_$GeneralItemLoadingImpl value,
          $Res Function(_$GeneralItemLoadingImpl) then) =
      __$$GeneralItemLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeneralItemLoadingImplCopyWithImpl<$Res>
    extends _$GeneralItemStateCopyWithImpl<$Res, _$GeneralItemLoadingImpl>
    implements _$$GeneralItemLoadingImplCopyWith<$Res> {
  __$$GeneralItemLoadingImplCopyWithImpl(_$GeneralItemLoadingImpl _value,
      $Res Function(_$GeneralItemLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GeneralItemLoadingImpl implements GeneralItemLoading {
  const _$GeneralItemLoadingImpl();

  @override
  String toString() {
    return 'GeneralItemState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GeneralItemLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(General generalData) loaded,
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
    TResult? Function(General generalData)? loaded,
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
    TResult Function(General generalData)? loaded,
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
    required TResult Function(GeneralItemInitial value) initial,
    required TResult Function(GeneralItemLoading value) loading,
    required TResult Function(GeneralItemEmpty value) empty,
    required TResult Function(GeneralItemLoaded value) loaded,
    required TResult Function(GeneralItemError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralItemInitial value)? initial,
    TResult? Function(GeneralItemLoading value)? loading,
    TResult? Function(GeneralItemEmpty value)? empty,
    TResult? Function(GeneralItemLoaded value)? loaded,
    TResult? Function(GeneralItemError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralItemInitial value)? initial,
    TResult Function(GeneralItemLoading value)? loading,
    TResult Function(GeneralItemEmpty value)? empty,
    TResult Function(GeneralItemLoaded value)? loaded,
    TResult Function(GeneralItemError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GeneralItemLoading implements GeneralItemState {
  const factory GeneralItemLoading() = _$GeneralItemLoadingImpl;
}

/// @nodoc
abstract class _$$GeneralItemEmptyImplCopyWith<$Res> {
  factory _$$GeneralItemEmptyImplCopyWith(_$GeneralItemEmptyImpl value,
          $Res Function(_$GeneralItemEmptyImpl) then) =
      __$$GeneralItemEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeneralItemEmptyImplCopyWithImpl<$Res>
    extends _$GeneralItemStateCopyWithImpl<$Res, _$GeneralItemEmptyImpl>
    implements _$$GeneralItemEmptyImplCopyWith<$Res> {
  __$$GeneralItemEmptyImplCopyWithImpl(_$GeneralItemEmptyImpl _value,
      $Res Function(_$GeneralItemEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GeneralItemEmptyImpl implements GeneralItemEmpty {
  const _$GeneralItemEmptyImpl();

  @override
  String toString() {
    return 'GeneralItemState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GeneralItemEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(General generalData) loaded,
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
    TResult? Function(General generalData)? loaded,
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
    TResult Function(General generalData)? loaded,
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
    required TResult Function(GeneralItemInitial value) initial,
    required TResult Function(GeneralItemLoading value) loading,
    required TResult Function(GeneralItemEmpty value) empty,
    required TResult Function(GeneralItemLoaded value) loaded,
    required TResult Function(GeneralItemError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralItemInitial value)? initial,
    TResult? Function(GeneralItemLoading value)? loading,
    TResult? Function(GeneralItemEmpty value)? empty,
    TResult? Function(GeneralItemLoaded value)? loaded,
    TResult? Function(GeneralItemError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralItemInitial value)? initial,
    TResult Function(GeneralItemLoading value)? loading,
    TResult Function(GeneralItemEmpty value)? empty,
    TResult Function(GeneralItemLoaded value)? loaded,
    TResult Function(GeneralItemError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class GeneralItemEmpty implements GeneralItemState {
  const factory GeneralItemEmpty() = _$GeneralItemEmptyImpl;
}

/// @nodoc
abstract class _$$GeneralItemLoadedImplCopyWith<$Res> {
  factory _$$GeneralItemLoadedImplCopyWith(_$GeneralItemLoadedImpl value,
          $Res Function(_$GeneralItemLoadedImpl) then) =
      __$$GeneralItemLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({General generalData});

  $GeneralCopyWith<$Res> get generalData;
}

/// @nodoc
class __$$GeneralItemLoadedImplCopyWithImpl<$Res>
    extends _$GeneralItemStateCopyWithImpl<$Res, _$GeneralItemLoadedImpl>
    implements _$$GeneralItemLoadedImplCopyWith<$Res> {
  __$$GeneralItemLoadedImplCopyWithImpl(_$GeneralItemLoadedImpl _value,
      $Res Function(_$GeneralItemLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generalData = null,
  }) {
    return _then(_$GeneralItemLoadedImpl(
      null == generalData
          ? _value.generalData
          : generalData // ignore: cast_nullable_to_non_nullable
              as General,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GeneralCopyWith<$Res> get generalData {
    return $GeneralCopyWith<$Res>(_value.generalData, (value) {
      return _then(_value.copyWith(generalData: value));
    });
  }
}

/// @nodoc

class _$GeneralItemLoadedImpl implements GeneralItemLoaded {
  const _$GeneralItemLoadedImpl(this.generalData);

  @override
  final General generalData;

  @override
  String toString() {
    return 'GeneralItemState.loaded(generalData: $generalData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralItemLoadedImpl &&
            (identical(other.generalData, generalData) ||
                other.generalData == generalData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, generalData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralItemLoadedImplCopyWith<_$GeneralItemLoadedImpl> get copyWith =>
      __$$GeneralItemLoadedImplCopyWithImpl<_$GeneralItemLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(General generalData) loaded,
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
    TResult? Function(General generalData)? loaded,
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
    TResult Function(General generalData)? loaded,
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
    required TResult Function(GeneralItemInitial value) initial,
    required TResult Function(GeneralItemLoading value) loading,
    required TResult Function(GeneralItemEmpty value) empty,
    required TResult Function(GeneralItemLoaded value) loaded,
    required TResult Function(GeneralItemError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralItemInitial value)? initial,
    TResult? Function(GeneralItemLoading value)? loading,
    TResult? Function(GeneralItemEmpty value)? empty,
    TResult? Function(GeneralItemLoaded value)? loaded,
    TResult? Function(GeneralItemError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralItemInitial value)? initial,
    TResult Function(GeneralItemLoading value)? loading,
    TResult Function(GeneralItemEmpty value)? empty,
    TResult Function(GeneralItemLoaded value)? loaded,
    TResult Function(GeneralItemError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GeneralItemLoaded implements GeneralItemState {
  const factory GeneralItemLoaded(final General generalData) =
      _$GeneralItemLoadedImpl;

  General get generalData;
  @JsonKey(ignore: true)
  _$$GeneralItemLoadedImplCopyWith<_$GeneralItemLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeneralItemErrorImplCopyWith<$Res> {
  factory _$$GeneralItemErrorImplCopyWith(_$GeneralItemErrorImpl value,
          $Res Function(_$GeneralItemErrorImpl) then) =
      __$$GeneralItemErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$GeneralItemErrorImplCopyWithImpl<$Res>
    extends _$GeneralItemStateCopyWithImpl<$Res, _$GeneralItemErrorImpl>
    implements _$$GeneralItemErrorImplCopyWith<$Res> {
  __$$GeneralItemErrorImplCopyWithImpl(_$GeneralItemErrorImpl _value,
      $Res Function(_$GeneralItemErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$GeneralItemErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GeneralItemErrorImpl implements GeneralItemError {
  const _$GeneralItemErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'GeneralItemState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralItemErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralItemErrorImplCopyWith<_$GeneralItemErrorImpl> get copyWith =>
      __$$GeneralItemErrorImplCopyWithImpl<_$GeneralItemErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(General generalData) loaded,
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
    TResult? Function(General generalData)? loaded,
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
    TResult Function(General generalData)? loaded,
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
    required TResult Function(GeneralItemInitial value) initial,
    required TResult Function(GeneralItemLoading value) loading,
    required TResult Function(GeneralItemEmpty value) empty,
    required TResult Function(GeneralItemLoaded value) loaded,
    required TResult Function(GeneralItemError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeneralItemInitial value)? initial,
    TResult? Function(GeneralItemLoading value)? loading,
    TResult? Function(GeneralItemEmpty value)? empty,
    TResult? Function(GeneralItemLoaded value)? loaded,
    TResult? Function(GeneralItemError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralItemInitial value)? initial,
    TResult Function(GeneralItemLoading value)? loading,
    TResult Function(GeneralItemEmpty value)? empty,
    TResult Function(GeneralItemLoaded value)? loaded,
    TResult Function(GeneralItemError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GeneralItemError implements GeneralItemState {
  const factory GeneralItemError(final String errorMessage) =
      _$GeneralItemErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$GeneralItemErrorImplCopyWith<_$GeneralItemErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
