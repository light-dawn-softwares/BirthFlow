import 'package:birthflow/src/core/vpp/domain/models/vpp.dart';

abstract class VppRepository {
  Future<void> create({
    required int partographId,
    required Position position,
    required HodgePlanePosition hodgePlane,
    required DateTime time,
  });

  Future<void> update({
    required int idVpp,
    required int partographId,
    required Position position,
    required HodgePlanePosition hodgePlane,
    required DateTime time,
  });

  Future<List<Vpp?>> findById({required int partographId});

  Future<void> delete({
    required int idVpp,
    required int partographId,
    required Position position,
    required HodgePlanePosition hodgePlane,
    required DateTime time,
  });
}
