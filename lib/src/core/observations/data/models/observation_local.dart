import 'package:floor/floor.dart';

@entity
class ObservationDto {
  @PrimaryKey(autoGenerate: true)
  final int? mSObservationID;

  final int partographID;
  final String header;
  final String description;

  ObservationDto({
    this.mSObservationID,
    required this.partographID,
    required this.header,
    required this.description,
  });
}
