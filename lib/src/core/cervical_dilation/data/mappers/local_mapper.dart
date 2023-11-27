import 'package:birthflow/src/core/cervical_dilation/data/models/cervical_dilation_dto.dart';
import 'package:birthflow/src/core/cervical_dilation/domain/models/cervical_dilation.dart';

// ignore: avoid_classes_with_only_static_members
class CervicalDilationMapper {
  static CervicalDilationDto transformToDto(CervicalDilation c) {
    return CervicalDilationDto(
      idCervicalDilation: c.idCervicalDilation,
      partographId: c.partographId,
      value: c.value.toString(),
      time: c.time.toIso8601String(),
      ramOrRem: c.ramOrRem.toString(),
    );
  }

  static CervicalDilation transformToModel(CervicalDilationDto d) {
    return CervicalDilation(
      idCervicalDilation: d.idCervicalDilation!,
      partographId: d.partographId,
      value: double.parse(d.value),
      time: DateTime.parse(d.time),
      ramOrRem: d.ramOrRem == 'true',
    );
  }
}
