import 'package:birthflow/src/core/observations/domain/models/observation.dart';

abstract class ObservationRepository {
  Future<List<Observation>?> getAllById({required int partographId});

  Future<void> insertObservation({
    required int partographID,
    required String header,
    required String description,
  });

  Future<void> updateObservation({
    required int msObservationID,
    required int partographID,
    required String header,
    required String description,
  });
}
