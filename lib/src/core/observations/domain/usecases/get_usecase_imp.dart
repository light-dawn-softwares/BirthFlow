import 'package:birthflow/src/core/observations/domain/models/observation.dart';
import 'package:birthflow/src/core/observations/domain/repository/repository.dart';
import 'package:birthflow/src/core/observations/domain/usecases/get_usecase.dart';

class ObservationGetUseCaseImplementation implements ObservationGetUseCase {
  final ObservationRepository _observationRepository;

  ObservationGetUseCaseImplementation(this._observationRepository);

  @override
  Future<List<Observation>?> execute(int partographId) async =>
      await _observationRepository.getAllById(partographId: partographId);
}
