import 'package:birthflow/src/core/medical_surveillance/domain/model/pain.dart';

abstract class CreateMedicalSurveillanceUseCase {
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
  });
}