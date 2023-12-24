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
mixin _$CervicalListEvent {
  int get partographId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int partographId) fetchGeneralData,
    required TResult Function(int partographId, double cervicalDilation,
            DateTime time, bool ramOrRem)
        insertData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int partographId)? fetchGeneralData,
    TResult? Function(int partographId, double cervicalDilation, DateTime time,
            bool ramOrRem)?
        insertData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int partographId)? fetchGeneralData,
    TResult Function(int partographId, double cervicalDilation, DateTime time,
            bool ramOrRem)?
        insertData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchData value) fetchGeneralData,
    required TResult Function(InsertData value) insertData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchData value)? fetchGeneralData,
    TResult? Function(InsertData value)? insertData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchData value)? fetchGeneralData,
    TResult Function(InsertData value)? insertData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CervicalListEventCopyWith<CervicalListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CervicalListEventCopyWith<$Res> {
  factory $CervicalListEventCopyWith(
          CervicalListEvent value, $Res Function(CervicalListEvent) then) =
      _$CervicalListEventCopyWithImpl<$Res, CervicalListEvent>;
  @useResult
  $Res call({int partographId});
}

/// @nodoc
class _$CervicalListEventCopyWithImpl<$Res, $Val extends CervicalListEvent>
    implements $CervicalListEventCopyWith<$Res> {
  _$CervicalListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
  }) {
    return _then(_value.copyWith(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchDataImplCopyWith<$Res>
    implements $CervicalListEventCopyWith<$Res> {
  factory _$$FetchDataImplCopyWith(
          _$FetchDataImpl value, $Res Function(_$FetchDataImpl) then) =
      __$$FetchDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int partographId});
}

/// @nodoc
class __$$FetchDataImplCopyWithImpl<$Res>
    extends _$CervicalListEventCopyWithImpl<$Res, _$FetchDataImpl>
    implements _$$FetchDataImplCopyWith<$Res> {
  __$$FetchDataImplCopyWithImpl(
      _$FetchDataImpl _value, $Res Function(_$FetchDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
  }) {
    return _then(_$FetchDataImpl(
      null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchDataImpl implements FetchData {
  const _$FetchDataImpl(this.partographId);

  @override
  final int partographId;

  @override
  String toString() {
    return 'CervicalListEvent.fetchGeneralData(partographId: $partographId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDataImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partographId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDataImplCopyWith<_$FetchDataImpl> get copyWith =>
      __$$FetchDataImplCopyWithImpl<_$FetchDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int partographId) fetchGeneralData,
    required TResult Function(int partographId, double cervicalDilation,
            DateTime time, bool ramOrRem)
        insertData,
  }) {
    return fetchGeneralData(partographId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int partographId)? fetchGeneralData,
    TResult? Function(int partographId, double cervicalDilation, DateTime time,
            bool ramOrRem)?
        insertData,
  }) {
    return fetchGeneralData?.call(partographId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int partographId)? fetchGeneralData,
    TResult Function(int partographId, double cervicalDilation, DateTime time,
            bool ramOrRem)?
        insertData,
    required TResult orElse(),
  }) {
    if (fetchGeneralData != null) {
      return fetchGeneralData(partographId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchData value) fetchGeneralData,
    required TResult Function(InsertData value) insertData,
  }) {
    return fetchGeneralData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchData value)? fetchGeneralData,
    TResult? Function(InsertData value)? insertData,
  }) {
    return fetchGeneralData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchData value)? fetchGeneralData,
    TResult Function(InsertData value)? insertData,
    required TResult orElse(),
  }) {
    if (fetchGeneralData != null) {
      return fetchGeneralData(this);
    }
    return orElse();
  }
}

abstract class FetchData implements CervicalListEvent {
  const factory FetchData(final int partographId) = _$FetchDataImpl;

  @override
  int get partographId;
  @override
  @JsonKey(ignore: true)
  _$$FetchDataImplCopyWith<_$FetchDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsertDataImplCopyWith<$Res>
    implements $CervicalListEventCopyWith<$Res> {
  factory _$$InsertDataImplCopyWith(
          _$InsertDataImpl value, $Res Function(_$InsertDataImpl) then) =
      __$$InsertDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int partographId,
      double cervicalDilation,
      DateTime time,
      bool ramOrRem});
}

/// @nodoc
class __$$InsertDataImplCopyWithImpl<$Res>
    extends _$CervicalListEventCopyWithImpl<$Res, _$InsertDataImpl>
    implements _$$InsertDataImplCopyWith<$Res> {
  __$$InsertDataImplCopyWithImpl(
      _$InsertDataImpl _value, $Res Function(_$InsertDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? cervicalDilation = null,
    Object? time = null,
    Object? ramOrRem = null,
  }) {
    return _then(_$InsertDataImpl(
      null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as int,
      null == cervicalDilation
          ? _value.cervicalDilation
          : cervicalDilation // ignore: cast_nullable_to_non_nullable
              as double,
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == ramOrRem
          ? _value.ramOrRem
          : ramOrRem // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InsertDataImpl implements InsertData {
  const _$InsertDataImpl(
      this.partographId, this.cervicalDilation, this.time, this.ramOrRem);

  @override
  final int partographId;
  @override
  final double cervicalDilation;
  @override
  final DateTime time;
  @override
  final bool ramOrRem;

  @override
  String toString() {
    return 'CervicalListEvent.insertData(partographId: $partographId, cervicalDilation: $cervicalDilation, time: $time, ramOrRem: $ramOrRem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertDataImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.cervicalDilation, cervicalDilation) ||
                other.cervicalDilation == cervicalDilation) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.ramOrRem, ramOrRem) ||
                other.ramOrRem == ramOrRem));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, partographId, cervicalDilation, time, ramOrRem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertDataImplCopyWith<_$InsertDataImpl> get copyWith =>
      __$$InsertDataImplCopyWithImpl<_$InsertDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int partographId) fetchGeneralData,
    required TResult Function(int partographId, double cervicalDilation,
            DateTime time, bool ramOrRem)
        insertData,
  }) {
    return insertData(partographId, cervicalDilation, time, ramOrRem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int partographId)? fetchGeneralData,
    TResult? Function(int partographId, double cervicalDilation, DateTime time,
            bool ramOrRem)?
        insertData,
  }) {
    return insertData?.call(partographId, cervicalDilation, time, ramOrRem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int partographId)? fetchGeneralData,
    TResult Function(int partographId, double cervicalDilation, DateTime time,
            bool ramOrRem)?
        insertData,
    required TResult orElse(),
  }) {
    if (insertData != null) {
      return insertData(partographId, cervicalDilation, time, ramOrRem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchData value) fetchGeneralData,
    required TResult Function(InsertData value) insertData,
  }) {
    return insertData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchData value)? fetchGeneralData,
    TResult? Function(InsertData value)? insertData,
  }) {
    return insertData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchData value)? fetchGeneralData,
    TResult Function(InsertData value)? insertData,
    required TResult orElse(),
  }) {
    if (insertData != null) {
      return insertData(this);
    }
    return orElse();
  }
}

abstract class InsertData implements CervicalListEvent {
  const factory InsertData(
      final int partographId,
      final double cervicalDilation,
      final DateTime time,
      final bool ramOrRem) = _$InsertDataImpl;

  @override
  int get partographId;
  double get cervicalDilation;
  DateTime get time;
  bool get ramOrRem;
  @override
  @JsonKey(ignore: true)
  _$$InsertDataImplCopyWith<_$InsertDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CervicalListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<CervicalDilation> data) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<CervicalDilation> data)? loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<CervicalDilation> data)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CervicalListInitial value) initial,
    required TResult Function(CervicalListLoading value) loading,
    required TResult Function(CervicalListEmpty value) empty,
    required TResult Function(CervicalListLoaded value) loaded,
    required TResult Function(CervicalListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CervicalListInitial value)? initial,
    TResult? Function(CervicalListLoading value)? loading,
    TResult? Function(CervicalListEmpty value)? empty,
    TResult? Function(CervicalListLoaded value)? loaded,
    TResult? Function(CervicalListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CervicalListInitial value)? initial,
    TResult Function(CervicalListLoading value)? loading,
    TResult Function(CervicalListEmpty value)? empty,
    TResult Function(CervicalListLoaded value)? loaded,
    TResult Function(CervicalListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CervicalListStateCopyWith<$Res> {
  factory $CervicalListStateCopyWith(
          CervicalListState value, $Res Function(CervicalListState) then) =
      _$CervicalListStateCopyWithImpl<$Res, CervicalListState>;
}

/// @nodoc
class _$CervicalListStateCopyWithImpl<$Res, $Val extends CervicalListState>
    implements $CervicalListStateCopyWith<$Res> {
  _$CervicalListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CervicalListInitialImplCopyWith<$Res> {
  factory _$$CervicalListInitialImplCopyWith(_$CervicalListInitialImpl value,
          $Res Function(_$CervicalListInitialImpl) then) =
      __$$CervicalListInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CervicalListInitialImplCopyWithImpl<$Res>
    extends _$CervicalListStateCopyWithImpl<$Res, _$CervicalListInitialImpl>
    implements _$$CervicalListInitialImplCopyWith<$Res> {
  __$$CervicalListInitialImplCopyWithImpl(_$CervicalListInitialImpl _value,
      $Res Function(_$CervicalListInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CervicalListInitialImpl implements CervicalListInitial {
  const _$CervicalListInitialImpl();

  @override
  String toString() {
    return 'CervicalListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CervicalListInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<CervicalDilation> data) loaded,
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
    TResult? Function(List<CervicalDilation> data)? loaded,
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
    TResult Function(List<CervicalDilation> data)? loaded,
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
    required TResult Function(CervicalListInitial value) initial,
    required TResult Function(CervicalListLoading value) loading,
    required TResult Function(CervicalListEmpty value) empty,
    required TResult Function(CervicalListLoaded value) loaded,
    required TResult Function(CervicalListError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CervicalListInitial value)? initial,
    TResult? Function(CervicalListLoading value)? loading,
    TResult? Function(CervicalListEmpty value)? empty,
    TResult? Function(CervicalListLoaded value)? loaded,
    TResult? Function(CervicalListError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CervicalListInitial value)? initial,
    TResult Function(CervicalListLoading value)? loading,
    TResult Function(CervicalListEmpty value)? empty,
    TResult Function(CervicalListLoaded value)? loaded,
    TResult Function(CervicalListError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CervicalListInitial implements CervicalListState {
  const factory CervicalListInitial() = _$CervicalListInitialImpl;
}

/// @nodoc
abstract class _$$CervicalListLoadingImplCopyWith<$Res> {
  factory _$$CervicalListLoadingImplCopyWith(_$CervicalListLoadingImpl value,
          $Res Function(_$CervicalListLoadingImpl) then) =
      __$$CervicalListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CervicalListLoadingImplCopyWithImpl<$Res>
    extends _$CervicalListStateCopyWithImpl<$Res, _$CervicalListLoadingImpl>
    implements _$$CervicalListLoadingImplCopyWith<$Res> {
  __$$CervicalListLoadingImplCopyWithImpl(_$CervicalListLoadingImpl _value,
      $Res Function(_$CervicalListLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CervicalListLoadingImpl implements CervicalListLoading {
  const _$CervicalListLoadingImpl();

  @override
  String toString() {
    return 'CervicalListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CervicalListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<CervicalDilation> data) loaded,
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
    TResult? Function(List<CervicalDilation> data)? loaded,
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
    TResult Function(List<CervicalDilation> data)? loaded,
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
    required TResult Function(CervicalListInitial value) initial,
    required TResult Function(CervicalListLoading value) loading,
    required TResult Function(CervicalListEmpty value) empty,
    required TResult Function(CervicalListLoaded value) loaded,
    required TResult Function(CervicalListError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CervicalListInitial value)? initial,
    TResult? Function(CervicalListLoading value)? loading,
    TResult? Function(CervicalListEmpty value)? empty,
    TResult? Function(CervicalListLoaded value)? loaded,
    TResult? Function(CervicalListError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CervicalListInitial value)? initial,
    TResult Function(CervicalListLoading value)? loading,
    TResult Function(CervicalListEmpty value)? empty,
    TResult Function(CervicalListLoaded value)? loaded,
    TResult Function(CervicalListError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CervicalListLoading implements CervicalListState {
  const factory CervicalListLoading() = _$CervicalListLoadingImpl;
}

/// @nodoc
abstract class _$$CervicalListEmptyImplCopyWith<$Res> {
  factory _$$CervicalListEmptyImplCopyWith(_$CervicalListEmptyImpl value,
          $Res Function(_$CervicalListEmptyImpl) then) =
      __$$CervicalListEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CervicalListEmptyImplCopyWithImpl<$Res>
    extends _$CervicalListStateCopyWithImpl<$Res, _$CervicalListEmptyImpl>
    implements _$$CervicalListEmptyImplCopyWith<$Res> {
  __$$CervicalListEmptyImplCopyWithImpl(_$CervicalListEmptyImpl _value,
      $Res Function(_$CervicalListEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CervicalListEmptyImpl implements CervicalListEmpty {
  const _$CervicalListEmptyImpl();

  @override
  String toString() {
    return 'CervicalListState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CervicalListEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<CervicalDilation> data) loaded,
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
    TResult? Function(List<CervicalDilation> data)? loaded,
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
    TResult Function(List<CervicalDilation> data)? loaded,
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
    required TResult Function(CervicalListInitial value) initial,
    required TResult Function(CervicalListLoading value) loading,
    required TResult Function(CervicalListEmpty value) empty,
    required TResult Function(CervicalListLoaded value) loaded,
    required TResult Function(CervicalListError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CervicalListInitial value)? initial,
    TResult? Function(CervicalListLoading value)? loading,
    TResult? Function(CervicalListEmpty value)? empty,
    TResult? Function(CervicalListLoaded value)? loaded,
    TResult? Function(CervicalListError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CervicalListInitial value)? initial,
    TResult Function(CervicalListLoading value)? loading,
    TResult Function(CervicalListEmpty value)? empty,
    TResult Function(CervicalListLoaded value)? loaded,
    TResult Function(CervicalListError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class CervicalListEmpty implements CervicalListState {
  const factory CervicalListEmpty() = _$CervicalListEmptyImpl;
}

/// @nodoc
abstract class _$$CervicalListLoadedImplCopyWith<$Res> {
  factory _$$CervicalListLoadedImplCopyWith(_$CervicalListLoadedImpl value,
          $Res Function(_$CervicalListLoadedImpl) then) =
      __$$CervicalListLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CervicalDilation> data});
}

/// @nodoc
class __$$CervicalListLoadedImplCopyWithImpl<$Res>
    extends _$CervicalListStateCopyWithImpl<$Res, _$CervicalListLoadedImpl>
    implements _$$CervicalListLoadedImplCopyWith<$Res> {
  __$$CervicalListLoadedImplCopyWithImpl(_$CervicalListLoadedImpl _value,
      $Res Function(_$CervicalListLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CervicalListLoadedImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CervicalDilation>,
    ));
  }
}

/// @nodoc

class _$CervicalListLoadedImpl implements CervicalListLoaded {
  const _$CervicalListLoadedImpl(final List<CervicalDilation> data)
      : _data = data;

  final List<CervicalDilation> _data;
  @override
  List<CervicalDilation> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CervicalListState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CervicalListLoadedImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CervicalListLoadedImplCopyWith<_$CervicalListLoadedImpl> get copyWith =>
      __$$CervicalListLoadedImplCopyWithImpl<_$CervicalListLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<CervicalDilation> data) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<CervicalDilation> data)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<CervicalDilation> data)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CervicalListInitial value) initial,
    required TResult Function(CervicalListLoading value) loading,
    required TResult Function(CervicalListEmpty value) empty,
    required TResult Function(CervicalListLoaded value) loaded,
    required TResult Function(CervicalListError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CervicalListInitial value)? initial,
    TResult? Function(CervicalListLoading value)? loading,
    TResult? Function(CervicalListEmpty value)? empty,
    TResult? Function(CervicalListLoaded value)? loaded,
    TResult? Function(CervicalListError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CervicalListInitial value)? initial,
    TResult Function(CervicalListLoading value)? loading,
    TResult Function(CervicalListEmpty value)? empty,
    TResult Function(CervicalListLoaded value)? loaded,
    TResult Function(CervicalListError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CervicalListLoaded implements CervicalListState {
  const factory CervicalListLoaded(final List<CervicalDilation> data) =
      _$CervicalListLoadedImpl;

  List<CervicalDilation> get data;
  @JsonKey(ignore: true)
  _$$CervicalListLoadedImplCopyWith<_$CervicalListLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CervicalListErrorImplCopyWith<$Res> {
  factory _$$CervicalListErrorImplCopyWith(_$CervicalListErrorImpl value,
          $Res Function(_$CervicalListErrorImpl) then) =
      __$$CervicalListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$CervicalListErrorImplCopyWithImpl<$Res>
    extends _$CervicalListStateCopyWithImpl<$Res, _$CervicalListErrorImpl>
    implements _$$CervicalListErrorImplCopyWith<$Res> {
  __$$CervicalListErrorImplCopyWithImpl(_$CervicalListErrorImpl _value,
      $Res Function(_$CervicalListErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$CervicalListErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CervicalListErrorImpl implements CervicalListError {
  const _$CervicalListErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CervicalListState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CervicalListErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CervicalListErrorImplCopyWith<_$CervicalListErrorImpl> get copyWith =>
      __$$CervicalListErrorImplCopyWithImpl<_$CervicalListErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<CervicalDilation> data) loaded,
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
    TResult? Function(List<CervicalDilation> data)? loaded,
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
    TResult Function(List<CervicalDilation> data)? loaded,
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
    required TResult Function(CervicalListInitial value) initial,
    required TResult Function(CervicalListLoading value) loading,
    required TResult Function(CervicalListEmpty value) empty,
    required TResult Function(CervicalListLoaded value) loaded,
    required TResult Function(CervicalListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CervicalListInitial value)? initial,
    TResult? Function(CervicalListLoading value)? loading,
    TResult? Function(CervicalListEmpty value)? empty,
    TResult? Function(CervicalListLoaded value)? loaded,
    TResult? Function(CervicalListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CervicalListInitial value)? initial,
    TResult Function(CervicalListLoading value)? loading,
    TResult Function(CervicalListEmpty value)? empty,
    TResult Function(CervicalListLoaded value)? loaded,
    TResult Function(CervicalListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CervicalListError implements CervicalListState {
  const factory CervicalListError(final String errorMessage) =
      _$CervicalListErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$CervicalListErrorImplCopyWith<_$CervicalListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
