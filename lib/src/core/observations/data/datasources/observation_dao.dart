import 'package:birthflow/src/core/observations/data/models/observation_local.dart';
import 'package:floor/floor.dart';

@dao
abstract class ObservationDao {
  @Query('SELECT * FROM ObservationDaoEntity WHERE partographId = :id')
  Future<List<ObservationDto>> getObservationById(int id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertObservation(ObservationDto observation);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateObservation(ObservationDto observation);
}
