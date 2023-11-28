import 'package:birthflow/src/core/work_time/domain/models/lib/membranas.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/paridad.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/posicion.dart';
import 'package:birthflow/src/core/work_time/domain/models/work_time.dart';

abstract class WorkTimeRepository {
  Future<WorkTime?> get({required int partographId});

  Future<void> create({
    required int partographId,
    required Posicion posicion,
    required Paridad paridad,
    required Membranas membranas,
  });

  Future<void> update({
    required int partographId,
    required Posicion posicion,
    required Paridad paridad,
    required Membranas membranas,
  });
}
