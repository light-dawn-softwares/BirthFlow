import 'package:freezed_annotation/freezed_annotation.dart';

part 'general.freezed.dart';
part 'general.g.dart';

@freezed
sealed class General with _$General {
 factory General({
    required int partographId,
    required String name,
    required String recordNumber,
    required DateTime date,
 }) = _General;

 factory General.fromJson(Map<String, dynamic> json) =>
      _$GeneralFromJson(json);
}
