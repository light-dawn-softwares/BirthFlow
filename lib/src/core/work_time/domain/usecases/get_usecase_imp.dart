import 'package:birthflow/src/core/work_time/domain/models/work_time.dart';
import 'package:birthflow/src/core/work_time/domain/repository/repository.dart';
import 'package:birthflow/src/core/work_time/domain/usecases/get_usecase.dart';

class WorkTimeGetUseCaseImplementation implements WorkTimeGetUseCase {
  final WorkTimeRepository _repository;

  WorkTimeGetUseCaseImplementation(this._repository);

  @override
  Future<WorkTime?> execute({required int partographId}) async {
    return await _repository.get(partographId: partographId);
  }
}
