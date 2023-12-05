import 'package:birthflow/src/core/general/domain/models/general.dart';

abstract class GeneralCreateUseCase {
  Future<General?> execute({
    required String name,
    required String recordNumber,
    required DateTime date,
  });
}
