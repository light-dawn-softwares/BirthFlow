import 'package:birthflow/src/core/work_time/data/model/work_time_local.dart';
import 'package:floor/floor.dart';

@dao
abstract class WorkTimeDao {
  @Query('SELECT * FROM work_times WHERE partographId = :partographId')
  Future<WorkTimeDto?> findWorkTimeById(int partographId);

  @insert
  Future<void> insertWorkTime(WorkTimeDto workTime);

  @update
  Future<void> updateWorkTime(WorkTimeDto workTime);

  @delete
  Future<void> deleteWorkTime(WorkTimeDto workTime);
}
