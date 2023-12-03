import 'package:birthflow/src/core/medical_surveillance/domain/model/medical_surveillance_item.dart';

abstract class GetMedicalSurveillanceUseCase {
  Future<List<MedicalSurveillanceItem>> execute(
      {required int medicalSurveillanceId});
}
