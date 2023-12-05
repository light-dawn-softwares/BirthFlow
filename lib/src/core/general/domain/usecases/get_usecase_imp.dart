import 'package:birthflow/src/core/general/domain/models/general.dart';
import 'package:birthflow/src/core/general/domain/repository/repository.dart';
import 'package:birthflow/src/core/general/domain/usecases/get_usecase.dart';

class GeneralGetUseCaseImplementation implements GeneralGetUseCase {
  final GeneralRepository _repository;
  const GeneralGetUseCaseImplementation(this._repository);

  @override
  Future<List<General>> execute() async {
    return await _repository.get();
  }
}
