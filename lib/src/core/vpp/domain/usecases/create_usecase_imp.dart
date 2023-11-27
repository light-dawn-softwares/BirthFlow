import 'package:birthflow/src/core/vpp/domain/models/vpp.dart';
import 'package:birthflow/src/core/vpp/domain/repository/repository.dart';
import 'package:birthflow/src/core/vpp/domain/usecases/create_usecase.dart';

class VppCreateUsecaseImplementation implements VppCreateUsecase {
  final VppRepository _repository;

  VppCreateUsecaseImplementation(this._repository);

  @override
  Future<void> execute({
    required int partographId,
    required Position position,
    required HodgePlanePosition hodgePlane,
    required DateTime time,
  }) async {
    await _repository.create(
      partographId: partographId,
      position: position,
      hodgePlane: hodgePlane,
      time: time,
    );
  }
}
