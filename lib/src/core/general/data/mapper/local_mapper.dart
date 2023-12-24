import 'package:birthflow/src/core/general/data/models/general_local.dart';
import 'package:birthflow/src/core/general/domain/models/general.dart';

// ignore: avoid_classes_with_only_static_members
class GeneralLocalMapper {
  static GeneralDto transformToDto(General model) {
    return GeneralDto(
      name: model.name,
      recordNumber: model.recordNumber,
      date: model.date.toIso8601String(),
    );
  }

  static General transformToModel(GeneralDto dto) {
    return General(
      partographId: dto.partographId!,
      name: dto.name,
      recordNumber: dto.recordNumber,
      date:  DateTime.parse(dto.date),
    );
  }
}
