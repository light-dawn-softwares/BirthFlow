import 'package:birthflow/src/core/general/domain/models/general.dart';

abstract class GeneralRepository {
  Future<List<General>> get();

  Future<void> create({
    required String name,
    required String recordNumber,
    required DateTime date,
  });

  Future<void> update({
    required int partographId,
    required String name,
    required String recordNumber,
    required DateTime date,
  });

  Future<General?> findById({required int partographId});

  Future<void> delete({required int partographId});
}
