import 'package:birthflow/src/core/general/data/models/general_local.dart';
import 'package:floor/floor.dart';

@Entity(
  tableName: 'cervical_dilations',
  foreignKeys: [
    ForeignKey(
      childColumns: ['partograph_id'],
      parentColumns: ['partograph_id'],
      entity: GeneralDto,
    ),
  ],
)
class CervicalDilationDto {
  @PrimaryKey(autoGenerate: true)
  final int? idCervicalDilation;

  @ColumnInfo(name: 'partograph_id')
  final int partographId;

  @ColumnInfo(name: 'value')
  final String value;

  @ColumnInfo(name: 'time')
  final String time;

  @ColumnInfo(name: 'ram_or_rem')
  final String ramOrRem;

  CervicalDilationDto({
    this.idCervicalDilation,
    required this.partographId,
    required this.value,
    required this.time,
    required this.ramOrRem,
  });
}
