// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

General _$GeneralFromJson(Map<String, dynamic> json) {
  return _General.fromJson(json);
}

/// @nodoc
mixin _$General {
  String get partographId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get recordNumber => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralCopyWith<General> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralCopyWith<$Res> {
  factory $GeneralCopyWith(General value, $Res Function(General) then) =
      _$GeneralCopyWithImpl<$Res, General>;
  @useResult
  $Res call(
      {String partographId, String name, String recordNumber, DateTime date});
}

/// @nodoc
class _$GeneralCopyWithImpl<$Res, $Val extends General>
    implements $GeneralCopyWith<$Res> {
  _$GeneralCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? name = null,
    Object? recordNumber = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      recordNumber: null == recordNumber
          ? _value.recordNumber
          : recordNumber // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneralImplCopyWith<$Res> implements $GeneralCopyWith<$Res> {
  factory _$$GeneralImplCopyWith(
          _$GeneralImpl value, $Res Function(_$GeneralImpl) then) =
      __$$GeneralImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String partographId, String name, String recordNumber, DateTime date});
}

/// @nodoc
class __$$GeneralImplCopyWithImpl<$Res>
    extends _$GeneralCopyWithImpl<$Res, _$GeneralImpl>
    implements _$$GeneralImplCopyWith<$Res> {
  __$$GeneralImplCopyWithImpl(
      _$GeneralImpl _value, $Res Function(_$GeneralImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? name = null,
    Object? recordNumber = null,
    Object? date = null,
  }) {
    return _then(_$GeneralImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      recordNumber: null == recordNumber
          ? _value.recordNumber
          : recordNumber // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralImpl implements _General {
  _$GeneralImpl(
      {required this.partographId,
      required this.name,
      required this.recordNumber,
      required this.date});

  factory _$GeneralImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralImplFromJson(json);

  @override
  final String partographId;
  @override
  final String name;
  @override
  final String recordNumber;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'General(partographId: $partographId, name: $name, recordNumber: $recordNumber, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.recordNumber, recordNumber) ||
                other.recordNumber == recordNumber) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, partographId, name, recordNumber, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralImplCopyWith<_$GeneralImpl> get copyWith =>
      __$$GeneralImplCopyWithImpl<_$GeneralImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralImplToJson(
      this,
    );
  }
}

abstract class _General implements General {
  factory _General(
      {required final String partographId,
      required final String name,
      required final String recordNumber,
      required final DateTime date}) = _$GeneralImpl;

  factory _General.fromJson(Map<String, dynamic> json) = _$GeneralImpl.fromJson;

  @override
  String get partographId;
  @override
  String get name;
  @override
  String get recordNumber;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$GeneralImplCopyWith<_$GeneralImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
