import 'package:birthflow/src/core/general/domain/models/general.dart';
import 'package:birthflow/src/core/general/domain/repository/repository.dart';
import 'package:birthflow/src/core/general/domain/usecases/find_by_usecase.dart';

class GeneralFindByUseCaseImplementation implements GeneralFindByUseCase {
  final GeneralRepository _repository;

  GeneralFindByUseCaseImplementation({required GeneralRepository repository})
      : _repository = repository;

  @override
  Future<General?> execute({required int partographId}) async {
    return await _repository.findById(partographId: partographId);
  }
}
