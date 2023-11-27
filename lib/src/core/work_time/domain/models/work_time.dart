import 'package:birthflow/src/core/work_time/domain/models/lib/membranas.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/paridad.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/posicion.dart';

class WorkTime {
  WorkTime({
    required this.partographId,
    required this.posicion,
    required this.paridad,
    required this.membranas,
  });

  int partographId;
  Posicion posicion;
  Paridad paridad;
  Membranas membranas;

  /// These are getter methods in the `WorkTime` class. They are used to calculate the state of the
  /// `WorkTime` object based on the values of its properties (`posicion`, `paridad`, and `membranas`).
  bool get state1 =>
      posicion.isVertical && paridad.isTodas && membranas.isIntegras;
  bool get state2 =>
      posicion.isHorizontal && paridad.isMultiparas && membranas.isIntegras;
  bool get state3 =>
      posicion.isHorizontal && paridad.isMultiparas && membranas.isRotas;
  bool get state4 =>
      posicion.isHorizontal && paridad.isNuliparas && membranas.isIntegras;
  bool get state5 =>
      posicion.isHorizontal && paridad.isNuliparas && membranas.isRotas;
}
