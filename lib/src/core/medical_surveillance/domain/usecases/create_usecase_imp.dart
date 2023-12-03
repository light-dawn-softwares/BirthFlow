import 'package:birthflow/src/core/medical_surveillance/domain/model/pain.dart';
import 'package:birthflow/src/core/medical_surveillance/domain/repository/repository.dart';
import 'package:birthflow/src/core/medical_surveillance/domain/usecases/create_usecase.dart';

class CreateMedicalSurveillanceUseCaseImplementation
    implements CreateMedicalSurveillanceUseCase {
  final MedicalSurveillanceRepository _repository;

  CreateMedicalSurveillanceUseCaseImplementation(this._repository);

  @override
  Future<void> execute({
    required int partographId,
    required String header,
    required DateTime time,
    required String maternalPosition,
    required String arterialPressure,
    required String maternalPulse,
    required String fetalHeartRate,
    required String frequencyContractions,
    required String contractionsDuration,
    required Pain pain,
  }) async {
    await _repository.createMedicalSurveillance(
      partographId: partographId,
      header: header,
      time: time,
      maternalPosition: maternalPosition,
      arterialPressure: arterialPressure,
      maternalPulse: maternalPulse,
      fetalHeartRate: fetalHeartRate,
      frequencyContractions: frequencyContractions,
      contractionsDuration: contractionsDuration,
      pain: pain,
    );
  }
}
