import 'package:birthflow/src/core/general/data/models/general_local.dart';
import 'package:floor/floor.dart';

@Entity(
  tableName: 'work_times',
  foreignKeys: [
    ForeignKey(
      childColumns: ['partograph_id'],
      parentColumns: ['partograph_id'],
      entity: GeneralDto,
    ),
  ],
)
class WorkTimeDto {
  @primaryKey
  @ColumnInfo(name: 'partograph_id')
  final int partographId;

  @ColumnInfo(name: 'membranas')
  final String membranas;

  @ColumnInfo(name: 'paridad')
  final String paridad;

  @ColumnInfo(name: 'posicion')
  final String posicion;

  WorkTimeDto({
    required this.partographId,
    required this.membranas,
    required this.paridad,
    required this.posicion,
  });
}
