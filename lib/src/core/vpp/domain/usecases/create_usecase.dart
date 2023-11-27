import 'package:birthflow/src/core/vpp/domain/models/vpp.dart';

abstract class VppCreateUsecase {
  Future<void> execute({
    required int partographId,
    required Position position,
    required HodgePlanePosition hodgePlane,
    required DateTime time,
  });
}
