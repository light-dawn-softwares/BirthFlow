import 'package:birthflow/src/core/cervical_dilation/domain/models/cervical_dilation.dart';

abstract class CervicalDilationRepository {
  Future<List<CervicalDilation>?> get({required int partographId});

  Future<void> create({
    required int partographId,
    required double cervicalDilation,
    required DateTime time,
    required bool ramOrRem,
  });
}
