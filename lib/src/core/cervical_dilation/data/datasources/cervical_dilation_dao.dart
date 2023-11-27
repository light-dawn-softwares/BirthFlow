import 'package:birthflow/src/core/cervical_dilation/data/models/cervical_dilation_dto.dart';
import 'package:floor/floor.dart';

@dao
abstract class CervicalDilationDao {
  @Query('SELECT * FROM CervicalDilation WHERE id_cervicalDilation = :id')
  Future<List<CervicalDilationDto>> findByID(int id);

  @Insert(onConflict: OnConflictStrategy.ignore)
  Future<void> insert(CervicalDilationDto cervicalDilation);

  @Update(onConflict: OnConflictStrategy.ignore)
  Future<void> update(CervicalDilationDto cervicalDilation);

  @delete
  Future<void> deleteComponent(CervicalDilationDto cervicalDilation);
}
