import 'package:birthflow/src/core/general/domain/models/general.dart';
import 'package:birthflow/src/core/general/domain/repository/repository.dart';
import 'package:birthflow/src/core/general/domain/usecases/create_usecase_imp.dart';

class GeneralCreateUseCaseImplementation implements GeneralCreateUseCase {
  final GeneralRepository _repository;

  const GeneralCreateUseCaseImplementation(
    this._repository,
  );

  @override
  Future<General?> execute({
    required String name,
    required String recordNumber,
    required DateTime date,
  }) async {
    return await _repository.create(
      name: name,
      recordNumber: recordNumber,
      date: date,
    );
  }
}
