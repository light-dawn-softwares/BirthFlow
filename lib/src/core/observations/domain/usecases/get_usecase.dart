import 'package:birthflow/src/core/observations/domain/models/observation.dart';

abstract class ObservationGetUseCase {
  Future<List<Observation>?> execute(int partographId);
}
