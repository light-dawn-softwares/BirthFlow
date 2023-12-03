import 'package:birthflow/src/core/general/data/models/general_local.dart';
import 'package:floor/floor.dart';

@Entity(
  tableName: 'vpps',
  foreignKeys: [
    ForeignKey(
      childColumns: ['partograph_id'],
      parentColumns: ['partograph_id'],
      entity: GeneralDto,
    ),
  ],
)
class ObservationDto {
  @PrimaryKey(autoGenerate: true)
  final int? mSObservationID;

  @ColumnInfo(name: 'partograph_id')
  final int partographID;
  
  @ColumnInfo(name: 'header')
  final String header;
  
  @ColumnInfo(name: 'description')
  final String description;

  ObservationDto({
    this.mSObservationID,
    required this.partographID,
    required this.header,
    required this.description,
  });
}
