/// The `UpdateGeneralUseCase` class is an abstract class that defines a method for updating general
/// information related to a partograph.
abstract class UpdateGeneralUseCase {
  /// The `execute` method is a function signature that defines the parameters and return type for
  /// updating general information related to a partograph.
  Future<void> execute({
    required int partographId,
    required String name,
    required String recordNumber,
    required DateTime date,
  });
}
