import 'package:birthflow/src/core/vpp/data/datasources/vpp_dao.dart';
import 'package:birthflow/src/core/vpp/data/mapper/local_mapper.dart';
import 'package:birthflow/src/core/vpp/data/models/vpp_local.dart';
import 'package:birthflow/src/core/vpp/domain/models/vpp.dart';
import 'package:birthflow/src/core/vpp/domain/repository/repository.dart';
import 'package:flutter/material.dart';

class VppRepositoryImplementation implements VppRepository {
  final VppDao dataSource;

  VppRepositoryImplementation({required this.dataSource});

  @override
  Future<void> create({
    required int partographId,
    required Position position,
    required HodgePlanePosition hodgePlane,
    required DateTime time,
  }) async {
    try {
      await dataSource.insertVpp(
        VppDto(
          partographId: partographId,
          position: position.value,
          hodgePlane: hodgePlane.valueAsString,
          time: time.toString(),
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<void> delete({
    required int idVpp,
    required int partographId,
    required Position position,
    required HodgePlanePosition hodgePlane,
    required DateTime time,
  }) async {
    try {
      await dataSource.deleteVVP(
        VppDto(
          idVpp: 1,
          partographId: partographId,
          position: position.value,
          hodgePlane: hodgePlane.valueAsString,
          time: time.toString(),
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<List<Vpp?>> findById({required int partographId}) async {
    try {
      final data = await dataSource.findById(partographId);
      return data!.map((e) => VppLocalMapper.transformToModel(e)).toList();
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  @override
  Future<void> update({
    required int idVpp,
    required int partographId,
    required Position position,
    required HodgePlanePosition hodgePlane,
    required DateTime time,
  }) async {
    try {
      await dataSource.updateVVP(
        VppDto(
          partographId: partographId,
          position: position.value,
          hodgePlane: hodgePlane.valueAsString,
          time: time.toString(),
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
