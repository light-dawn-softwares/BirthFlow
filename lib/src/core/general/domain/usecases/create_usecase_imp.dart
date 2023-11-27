abstract class CreateGeneralUseCase {
  Future<void> execute({
    required String name,
    required String recordNumber,
    required DateTime date,
  });
}
