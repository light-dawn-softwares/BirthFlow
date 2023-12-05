import 'package:floor/floor.dart';

@Entity(tableName: 'generals')
class GeneralDto {
  GeneralDto({
    this.partographId,
    required this.name,
    required this.recordNumber,
    required this.date,
  });

  @PrimaryKey(autoGenerate: true)
  @ColumnInfo(name: 'partograph_id')
  final int? partographId;

  @ColumnInfo(name: 'name')
  final String name;

  @ColumnInfo(name: 'record_number')
  final String recordNumber;

  @ColumnInfo(name: 'date')
  final String date;

  Map<String, dynamic> toJson() {
    return {
      'partographId': partographId,
      'name': name,
      'recordNumber': recordNumber,
      'date': date,
    };
  }
}
