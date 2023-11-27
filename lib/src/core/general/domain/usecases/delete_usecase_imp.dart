import 'package:birthflow/src/core/general/domain/repository/repository.dart';
import 'package:birthflow/src/core/general/domain/usecases/delete_usecase.dart';

/// The `DeleteGeneralUseCaseImplementation` class is an implementation of the `DeleteGeneralUseCase`
/// interface that deletes a general item using a repository.
class DeleteGeneralUseCaseImplementation implements DeleteGeneralUseCase {
  final GeneralRepository _repository;

  DeleteGeneralUseCaseImplementation(this._repository);

  /// The function executes a delete operation on a repository using the provided partographId.
  ///
  /// Args:
  ///   partographId (int): The id of the partograph that needs to be deleted.
  @override
  Future<void> execute({required int partographId}) async {
    await _repository.delete(partographId: partographId);
  }
}
