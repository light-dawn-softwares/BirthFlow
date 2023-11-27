import 'package:birthflow/src/core/observations/data/datasources/observation_dao.dart';
import 'package:birthflow/src/core/observations/data/mappers/local_mapper.dart';
import 'package:birthflow/src/core/observations/data/models/observation_local.dart';
import 'package:birthflow/src/core/observations/domain/models/observation.dart';
import 'package:birthflow/src/core/observations/domain/repository/repository.dart';
import 'package:flutter/material.dart';

class ObservationRepositoryImplementation implements ObservationRepository {
  final ObservationDao datasources;

  ObservationRepositoryImplementation({required this.datasources});

  @override
  Future<List<Observation>?> getAllById({required int partographId}) async {
    try {
      final result = await datasources.getObservationById(partographId);
      return result
          .map((e) => ObservationLocalMapper.transformToModel(e))
          .toList();
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<void> insertObservation({
    required int partographID,
    required String header,
    required String description,
  }) async {
    try {
      await datasources.insertObservation(
        ObservationDto(
          partographID: partographID,
          header: header,
          description: description,
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<void> updateObservation({
    required int msObservationID,
    required int partographID,
    required String header,
    required String description,
  }) async {
    try {
      await datasources.updateObservation(
        ObservationDto(
          mSObservationID: msObservationID,
          partographID: partographID,
          header: header,
          description: description,
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
