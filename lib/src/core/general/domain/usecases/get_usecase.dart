import 'package:birthflow/src/core/general/domain/models/general.dart';

abstract class GeneralGetUseCase {
  Future<List<General>> execute();
}
