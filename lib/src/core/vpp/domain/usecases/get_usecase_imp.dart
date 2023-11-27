import 'package:birthflow/src/core/vpp/domain/models/vpp.dart';
import 'package:birthflow/src/core/vpp/domain/repository/repository.dart';
import 'package:birthflow/src/core/vpp/domain/usecases/get_usecase.dart';

class VppGetUsecaseImplementation implements VppGetUsecase {
  final VppRepository _repository;

  VppGetUsecaseImplementation(this._repository);

  @override
  Future<List<Vpp?>> execute({required int partographId}) async {
    return await _repository.findById(partographId: partographId);
  }
}
