import 'package:birthflow/src/core/cervical_dilation/domain/models/cervical_dilation.dart';
import 'package:birthflow/src/core/cervical_dilation/domain/repository/repository.dart';
import 'package:birthflow/src/core/cervical_dilation/domain/usecases/get_usecase.dart';

class CervicalDilationGetUseCaseImplementation
    implements CervicalDilationGetUseCase {
  final CervicalDilationRepository cervicalDilationRepository;

  CervicalDilationGetUseCaseImplementation(this.cervicalDilationRepository);

  /// The function executes a query to retrieve a list of cervical dilation data based on a given
  /// partograph ID.
  ///
  /// Args:
  ///   partographId (int): The partographId parameter is an integer that represents the unique identifier
  /// of a partograph.
  ///
  /// Returns:
  ///   The method is returning a Future object of type CervicalDilationList.
  @override
  Future<List<CervicalDilation>?> execute({required int partographId}) async {
    return await cervicalDilationRepository.get(partographId: partographId);
  }
}
