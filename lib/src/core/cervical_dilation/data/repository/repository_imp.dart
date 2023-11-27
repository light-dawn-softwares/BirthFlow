import 'package:birthflow/src/core/cervical_dilation/data/datasources/cervical_dilation_dao.dart';
import 'package:birthflow/src/core/cervical_dilation/data/mappers/local_mapper.dart';
import 'package:birthflow/src/core/cervical_dilation/data/models/cervical_dilation_dto.dart';
import 'package:birthflow/src/core/cervical_dilation/domain/models/cervical_dilation.dart';
import 'package:birthflow/src/core/cervical_dilation/domain/repository/repository.dart';
import 'package:flutter/material.dart';

class CervicalDilationRepositoryImplementation
    implements CervicalDilationRepository {
  final CervicalDilationDao datasources;

  CervicalDilationRepositoryImplementation({required this.datasources});
  @override
  Future<void> create({
    required int partographId,
    required double cervicalDilation,
    required DateTime time,
    required bool ramOrRem,
  }) async {
    try {
      await datasources.insert(
        CervicalDilationDto(
          partographId: partographId,
          value: cervicalDilation.toString(),
          time: time.toString(),
          ramOrRem: ramOrRem.toString(),
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<List<CervicalDilation>?> get({required int partographId}) async {
    try {
      final result = await datasources.findByID(partographId);
      return result
          .map((e) => CervicalDilationMapper.transformToModel(e))
          .toList();
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
