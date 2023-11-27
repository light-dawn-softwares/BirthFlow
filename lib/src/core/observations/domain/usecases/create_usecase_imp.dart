import 'package:birthflow/src/core/observations/domain/repository/repository.dart';
import 'package:birthflow/src/core/observations/domain/usecases/create_usecase.dart';

class ObservationCreateUseCaseImplementation
    implements ObservationCreateUseCase {
  final ObservationRepository _observationRepository;

  ObservationCreateUseCaseImplementation(this._observationRepository);
  @override
  Future<void> execute({
    required int partographID,
    required String header,
    required String description,
  }) async {
    await _observationRepository.insertObservation(
      partographID: partographID,
      header: header,
      description: description,
    );
  }
}
