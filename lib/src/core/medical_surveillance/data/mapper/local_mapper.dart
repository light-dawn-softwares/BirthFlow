// ignore_for_file: avoid_classes_with_only_static_members

import 'package:birthflow/src/core/medical_surveillance/data/models/medical_surveillance_local.dart';
import 'package:birthflow/src/core/medical_surveillance/domain/model/medical_surveillance_item.dart';
import 'package:birthflow/src/core/medical_surveillance/domain/model/pain.dart';

class MedicalSurveillanceLocalMapper {
  static MedicalSurveillanceItem fromDto(MedicalSurveillanceDto dto) {
    return MedicalSurveillanceItem(
      idMedicalSurve: dto.medicalSurveillanceID!,
      partographId: dto.partographID,
      header: dto.header,
      time: DateTime.parse(dto.time),
      maternalPosition: dto.maternalPosition,
      arterialPressure: dto.arterialPressure,
      maternalPulse: dto.maternalPulse,
      fetalHeartRate: dto.fetalHeartRate,
      frequencyContractions: dto.frequencyContractions,
      contractionsDuration: dto.contractionsDuration,
      pain: Pain(
        idMedicalSurve: dto.medicalSurveillanceID!,
        intensity: dto.painIntensity,
        location: dto.painLocation,
      ),
    );
  }

  static MedicalSurveillanceDto toDto(MedicalSurveillanceItem model) {
    return MedicalSurveillanceDto(
      medicalSurveillanceID: model.idMedicalSurve,
      partographID: model.partographId,
      header: model.header,
      time: model.time.toIso8601String(),
      maternalPosition: model.maternalPosition,
      arterialPressure: model.arterialPressure,
      maternalPulse: model.maternalPulse,
      fetalHeartRate: model.fetalHeartRate,
      frequencyContractions: model.frequencyContractions,
      contractionsDuration: model.contractionsDuration,
      painIntensity: model.pain.intensity,
      painLocation: model.pain.location,
    );
  }

  static MedicalSurveillanceDto newDao(
      {required int partographId,
      required String header,
      required DateTime time,
      required String maternalPosition,
      required String arterialPressure,
      required String maternalPulse,
      required String fetalHeartRate,
      required String frequencyContractions,
      required String contractionsDuration,
      required Pain pain}) {
    return MedicalSurveillanceDto(
      partographID: partographId,
      header: header,
      time: time.toIso8601String(),
      maternalPosition: maternalPosition,
      arterialPressure: arterialPressure,
      maternalPulse: maternalPulse,
      fetalHeartRate: fetalHeartRate,
      frequencyContractions: frequencyContractions,
      contractionsDuration: contractionsDuration,
      painIntensity: pain.intensity,
      painLocation: pain.location,
    );
  }
}
