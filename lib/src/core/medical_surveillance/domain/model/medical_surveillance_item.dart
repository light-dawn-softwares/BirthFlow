import 'package:birthflow/src/core/medical_surveillance/domain/model/pain.dart';

class MedicalSurveillanceItem {
  MedicalSurveillanceItem({
    required this.idMedicalSurve,
    required this.idPartograph,
    required this.time,
    required this.maternalPosition,
    required this.arterialPressure,
    required this.maternalPulse,
    required this.fetalHeartRate,
    required this.frequencyContractions,
    required this.contractionsDuration,
    required this.pain,
  });
  final int idMedicalSurve;
  final int idPartograph;
  final DateTime time;
  final String maternalPosition;
  final String arterialPressure;
  final String maternalPulse;
  final String fetalHeartRate;
  final String contractionsDuration;
  final String frequencyContractions;
  final Pain pain;
}
