import 'package:birthflow/src/core/general/domain/models/general.dart';

abstract class GeneralFindByUseCase {
  Future<General?> execute({required int partographId});
}
