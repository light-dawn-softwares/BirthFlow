import 'package:floor/floor.dart';

@Entity(tableName: 'Vpp')
class VppDto {
  @primaryKey
  @ColumnInfo(name: 'idVpp')
  final int? idVpp;

  @ColumnInfo(name: 'partographId')
  final int partographId;

  @ColumnInfo(name: 'position')
  final String position;

  @ColumnInfo(name: 'hodge_plane')
  final String hodgePlane;

  @ColumnInfo(name: 'time')
  final String time;

  VppDto({
    this.idVpp,
    required this.partographId,
    required this.position,
    required this.hodgePlane,
    required this.time,
  });

  Map<String, dynamic> toJson() => {
        'idVpp': idVpp,
        'partographId': partographId,
        'position': position,
        'hodgePlane': hodgePlane,
        'time': time,
      };
}
