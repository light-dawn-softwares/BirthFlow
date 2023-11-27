import 'package:birthflow/src/core/general/domain/models/general.dart';

abstract class GetGeneralUseCase {
  Future<List<General>> execute();
}
