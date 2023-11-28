import 'package:birthflow/src/core/work_time/domain/models/lib/membranas.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/paridad.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/posicion.dart';
import 'package:birthflow/src/core/work_time/domain/repository/repository.dart';
import 'package:birthflow/src/core/work_time/domain/usecases/update_usecase.dart';

class UpdateWorkTimeUseCaseImplementation implements WorkTimeUpdateUseCase {
  final WorkTimeRepository _repository;

  const UpdateWorkTimeUseCaseImplementation(this._repository);

  @override
  Future<void> execute({
    required int partographId,
    required Posicion posicion,
    required Paridad paridad,
    required Membranas membranas,
  }) async {
    await _repository.update(
      partographId: partographId,
      posicion: posicion,
      paridad: paridad,
      membranas: membranas,
    );
  }
}
