import 'package:floor/floor.dart';

@Entity(tableName: 'CervicalDilations')
class CervicalDilationDto {
 @PrimaryKey(autoGenerate: true)
 final int? idCervicalDilation;

 @ColumnInfo(name: 'id_partograph')
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
