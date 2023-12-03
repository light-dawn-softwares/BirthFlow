import 'package:birthflow/src/core/medical_surveillance/domain/model/medical_surveillance_item.dart';
import 'package:birthflow/src/core/medical_surveillance/domain/repository/repository.dart';
import 'package:birthflow/src/core/medical_surveillance/domain/usecases/get_usecase.dart';

class GetMedicalSurveillanceUseCaseImplementation
    implements GetMedicalSurveillanceUseCase {
  final MedicalSurveillanceRepository _repository;

  GetMedicalSurveillanceUseCaseImplementation(this._repository);

  @override
  Future<List<MedicalSurveillanceItem>> execute(
      {required int medicalSurveillanceId}) async {
    return await _repository.findMedicalSurveillanceById(
        medicalSurveillanceId: medicalSurveillanceId);
  }
}
