import 'package:birthflow/src/core/work_time/domain/models/lib/membranas.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/paridad.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/posicion.dart';

abstract class WorkTimeCreateUseCase {
  Future<void> execute({
    required int partographId,
    required Posicion posicion,
    required Paridad paridad,
    required Membranas membranas,
  });
}
