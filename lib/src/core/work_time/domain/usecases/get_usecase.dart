import 'package:birthflow/src/core/work_time/domain/models/work_time.dart';

abstract class WorkTimeGetUseCase {
  Future<WorkTime?> execute({required int partographId});
}
