import 'package:birthflow/src/core/general/data/models/general_local.dart';
import 'package:floor/floor.dart';

@dao
abstract class GeneralDao {
  @Query('SELECT * FROM generals')
  Future<List<GeneralDto>> findAllGenerals();

  @Query('SELECT * FROM generals WHERE partograph_id = :partographId')
  Future<GeneralDto?> findGeneralById(int partographId);

  @insert
  Future<int> insertGeneral(GeneralDto general);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateGeneral(GeneralDto general);

  @Query('DELETE FROM generals WHERE partograph_id = :partographId')
  Future<void> deleteGeneral(int partographId);
}
