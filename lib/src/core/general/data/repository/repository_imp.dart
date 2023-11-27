import 'package:birthflow/src/core/general/data/datasources/general_dao.dart';
import 'package:birthflow/src/core/general/data/models/general_local.dart';
import 'package:birthflow/src/core/general/domain/models/general.dart';
import 'package:birthflow/src/core/general/domain/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GeneralRepositoyImplementation implements GeneralRepository {
  final GeneralDao generalDao;

  GeneralRepositoyImplementation({required this.generalDao});

  @override
  Future<void> create({
    required String name,
    required String recordNumber,
    required DateTime date,
  }) async {
    try {
      generalDao.insertGeneral(
        GeneralDto(
          name: name,
          recordNumber: recordNumber,
          date: DateFormat.yMMMd().format(date),
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
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
      return General.fromJson(result!.toJson());
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
          .map((generalDto) => General.fromJson(generalDto.toJson()))
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
          date: DateFormat.yMMMd().format(date),
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
