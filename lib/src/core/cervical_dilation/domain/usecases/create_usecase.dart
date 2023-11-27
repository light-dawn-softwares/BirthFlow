abstract class CervicalDilationCreateUseCase {
  /// The `execute` method is a function signature that defines the parameters and return type for a use
  /// case that creates a cervical dilation entry in a partograph.
  Future<void> execute({
    required int partographId,
    required double cervicalDilation,
    required DateTime time,
    required bool ramOrRem,
  });
}
