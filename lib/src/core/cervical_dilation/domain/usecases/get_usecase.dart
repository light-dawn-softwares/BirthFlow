import 'package:birthflow/src/core/cervical_dilation/domain/models/cervical_dilation.dart';

/// The abstract class GetCervicalDilatioUseCase defines a method for executing a use case to retrieve a
/// list of cervical dilation data.
abstract class CervicalDilationGetUseCase {

  Future<List<CervicalDilation>?> execute({required int partographId});
}
