import 'package:birthflow/src/core/general/domain/repository/repository.dart';
import 'package:birthflow/src/core/general/domain/usecases/create_usecase_imp.dart';

class CreateGeneralUseCaseImplementation implements CreateGeneralUseCase {
  final GeneralRepository _repository;

  const CreateGeneralUseCaseImplementation(this._repository);

  @override
  Future<void> execute({
    required String name,
    required String recordNumber,
    required DateTime date,
  }) async {
    await _repository.create(
      name: name,
      recordNumber: recordNumber,
      date: date,
    );
  }
}
