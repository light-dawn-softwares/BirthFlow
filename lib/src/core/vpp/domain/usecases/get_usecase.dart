import 'package:birthflow/src/core/vpp/domain/models/vpp.dart';

abstract class VppGetUsecase {
  Future<List<Vpp?>> execute({required int partographId});
}
