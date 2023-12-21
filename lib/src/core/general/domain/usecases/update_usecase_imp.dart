import 'package:birthflow/src/core/general/domain/repository/repository.dart';
import 'package:birthflow/src/core/general/domain/usecases/update_usecase.dart';

/// The `UpdateGeneralUseCaseImplementation` class is an implementation of the `UpdateGeneralUseCase`
/// interface that updates a general entity using a repository.
class GeneralUpdateUseCaseImplementation implements GeneralUpdateUseCase {
  final GeneralRepository _repository;

  const GeneralUpdateUseCaseImplementation(this._repository);

  @override
  Future<void> execute({
    required int partographId,
    required String name,
    required String recordNumber,
    required DateTime date,
  }) async {
    return await _repository.update(
      partographId: partographId,
      name: name,
      recordNumber: recordNumber,
      date: date,
    );
  }
}
