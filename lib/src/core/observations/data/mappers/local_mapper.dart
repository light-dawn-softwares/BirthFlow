import 'package:birthflow/src/core/observations/data/models/observation_local.dart';
import 'package:birthflow/src/core/observations/domain/models/observation.dart';

// ignore: avoid_classes_with_only_static_members
class ObservationLocalMapper {
  static Observation transformToModel(ObservationDto dto) {
    return Observation(
      msObservationID: dto.mSObservationID,
      partographID: dto.partographID,
      header: dto.header,
      description: dto.description,
    );
  }

  static ObservationDto mapToDaoEntity(Observation model) {
    return ObservationDto(
      mSObservationID: model.msObservationID,
      partographID: model.partographID,
      header: model.header,
      description: model.description,
    );
  }
}
