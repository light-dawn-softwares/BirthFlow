import 'package:birthflow/src/core/cervical_dilation/domain/repository/repository.dart';
import 'package:birthflow/src/core/cervical_dilation/domain/usecases/create_usecase.dart';

/// The `CreateCervicalDilationUseCaseImplementation` class is an implementation of the
/// `CreateCervicalDilationUseCase` interface that allows for creating cervical dilation records.
class CervicalDilationCreateUseCaseImplementation
    implements CervicalDilationCreateUseCase {
  final CervicalDilationRepository cervicalDilationRepository;

  CervicalDilationCreateUseCaseImplementation(this.cervicalDilationRepository);

  @override
  Future<void> execute({
    required int partographId,
    required double cervicalDilation,
    required DateTime time,
    required bool ramOrRem,
  }) async {
    return await cervicalDilationRepository.create(
      partographId: partographId,
      cervicalDilation: cervicalDilation,
      time: time,
      ramOrRem: ramOrRem,
    );
  }
}
