abstract class ObservationCreateUseCase {
  Future<void> execute({
    required int partographID,
    required String header,
    required String description,
  });
}
