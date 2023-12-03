import 'package:birthflow/src/core/medical_surveillance/data/datasources/medical_surveillance_dao.dart';
import 'package:birthflow/src/core/medical_surveillance/data/mapper/local_mapper.dart';
import 'package:birthflow/src/core/medical_surveillance/domain/model/medical_surveillance_item.dart';
import 'package:birthflow/src/core/medical_surveillance/domain/model/pain.dart';
import 'package:birthflow/src/core/medical_surveillance/domain/repository/repository.dart';
import 'package:flutter/material.dart';

class MedicalSurveillanceRepositoryImplementation
    implements MedicalSurveillanceRepository {
  final MedicalSurveillanceDao _medicalSurveillanceDao;

  MedicalSurveillanceRepositoryImplementation(
    MedicalSurveillanceDao medicalSurveillanceDao,
  ) : _medicalSurveillanceDao = medicalSurveillanceDao;

  @override
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
  }) async {
    try {
      await _medicalSurveillanceDao.insertMedicalSurveillance(
        MedicalSurveillanceLocalMapper.newDao(
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
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<void> deleteMedicalSurveillance(
      {required int medicalSurveillanceId}) async {
    try {
      await _medicalSurveillanceDao
          .deleteMedicalSurveillance(medicalSurveillanceId);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<List<MedicalSurveillanceItem>> findMedicalSurveillanceById({
    required int medicalSurveillanceId,
  }) async {
    try {
      final resultList = await _medicalSurveillanceDao
          .findMedicalSurveillanceById(medicalSurveillanceId);
      final medicalSurveillanceList = resultList
          .map((medicalSurveillanceDto) =>
              MedicalSurveillanceLocalMapper.fromDto(medicalSurveillanceDto))
          .toList();
      return medicalSurveillanceList;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  @override
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
  }) async {
    try {
      await _medicalSurveillanceDao.updateMedicalSurveillance(
        MedicalSurveillanceLocalMapper.newDao(
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
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
