import 'package:birthflow/src/core/general/domain/models/general.dart';
import 'package:birthflow/src/core/general/domain/repository/repository.dart';
import 'package:birthflow/src/core/general/domain/usecases/get_usecase.dart';

class GetGeneralUseCaseImplementation implements GetGeneralUseCase {
  final GeneralRepository _repository;
  const GetGeneralUseCaseImplementation(this._repository);

  @override
  Future<List<General>> execute() {
    return _repository.get();
  }
}
