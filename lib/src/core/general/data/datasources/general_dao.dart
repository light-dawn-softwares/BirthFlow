import 'package:birthflow/src/core/general/data/models/general_local.dart';
import 'package:floor/floor.dart';

@dao
abstract class GeneralDao {
  @Query('SELECT * FROM Generals')
  Future<List<GeneralDto>> findAllGenerals();

  @Query('SELECT * FROM Generals WHERE id_partograph = :partographId')
  Future<GeneralDto?> findGeneralById(int partographId);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertGeneral(GeneralDto general);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateGeneral(GeneralDto general);

  @Query('DELETE FROM Generals WHERE id_partograph = :partographId')
  Future<void> deleteGeneral(int partographId);
}
