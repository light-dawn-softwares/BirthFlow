import 'package:birthflow/src/core/work_time/data/datasources/work_time_dao.dart';
import 'package:birthflow/src/core/work_time/data/mapper/local_mapper.dart';
import 'package:birthflow/src/core/work_time/data/model/work_time_local.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/membranas.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/paridad.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/posicion.dart';
import 'package:birthflow/src/core/work_time/domain/models/work_time.dart';
import 'package:birthflow/src/core/work_time/domain/repository/repository.dart';
import 'package:flutter/material.dart';

class WorkTimeRepositoryImplementation implements WorkTimeRepository {
  final WorkTimeDao datasources;

  WorkTimeRepositoryImplementation({required this.datasources});

  @override
  Future<void> create({
    required int partographId,
    required Posicion posicion,
    required Paridad paridad,
    required Membranas membranas,
  }) async {
    try {
      await datasources.insertWorkTime(
        WorkTimeDto(
          partographId: partographId,
          posicion: posicion.toString(),
          paridad: paridad.toString(),
          membranas: membranas.toString(),
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<WorkTime?> get({required int partographId}) async {
    try {
      final result = await datasources.findWorkTimeById(partographId);
      return WorkTimeLocalMapper.transformToModel(result!);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<void> update({
    required int partographId,
    required Posicion posicion,
    required Paridad paridad,
    required Membranas membranas,
  }) async {
    try {
      await datasources.updateWorkTime(
        WorkTimeDto(
          partographId: partographId,
          posicion: posicion.toString(),
          paridad: paridad.toString(),
          membranas: membranas.toString(),
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
