import 'package:birthflow/src/core/medical_surveillance/domain/model/medical_surveillance_item.dart';
import 'package:birthflow/src/core/medical_surveillance/domain/model/pain.dart';

abstract class MedicalSurveillanceRepository {
  Future<void> createMedicalSurveillance({
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

  Future<void> deleteMedicalSurveillance({required int medicalSurveillanceId});

  Future<List<MedicalSurveillanceItem>> findMedicalSurveillanceById({
    required int medicalSurveillanceId,
  });

  Future<void> updateMedicalSurveillance({
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
