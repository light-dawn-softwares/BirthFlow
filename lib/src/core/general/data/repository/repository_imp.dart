import 'package:birthflow/src/core/general/data/datasources/general_dao.dart';
import 'package:birthflow/src/core/general/data/mapper/local_mapper.dart';
import 'package:birthflow/src/core/general/data/models/general_local.dart';
import 'package:birthflow/src/core/general/domain/models/general.dart';
import 'package:birthflow/src/core/general/domain/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GeneralRepositoryImplementation implements GeneralRepository {
  final GeneralDao generalDao;

  GeneralRepositoryImplementation({required this.generalDao});

  @override
  Future<General?> create({
    required String name,
    required String recordNumber,
    required DateTime date,
  }) async {
    try {
      final generatedId = await generalDao.insertGeneral(
        GeneralDto(
          name: name,
          recordNumber: recordNumber,
          date: date.toString(),
        ),
      );

      final insertedGeneral = General(
        partographId: generatedId,
        name: name,
        recordNumber: recordNumber,
        date: date,
      );

      return insertedGeneral;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<void> delete({required int partographId}) async {
    try {
      generalDao.deleteGeneral(partographId);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<General?> findById({required int partographId}) async {
    try {
      final result = await generalDao.findGeneralById(partographId);
      return GeneralLocalMapper.transformToModel(result!);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<List<General>> get() async {
    try {
      final resultList = await generalDao.findAllGenerals();
      final generalList = resultList
          .map((generalDto) => GeneralLocalMapper.transformToModel(generalDto))
          .toList();
      return generalList;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  @override
  Future<void> update({
    required int partographId,
    required String name,
    required String recordNumber,
    required DateTime date,
  }) async {
    try {
      generalDao.updateGeneral(
        GeneralDto(
          partographId: partographId,
          name: name,
          recordNumber: recordNumber,
          date: date.toIso8601String(),
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
