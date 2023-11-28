import 'package:birthflow/src/core/work_time/data/model/work_time_local.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/membranas.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/paridad.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/posicion.dart';
import 'package:birthflow/src/core/work_time/domain/models/work_time.dart';

// ignore: avoid_classes_with_only_static_members
class WorkTimeLocalMapper {
  
  static WorkTime transformToModel(WorkTimeDto dto) {
    final Posicion posicion;
    final Paridad paridad;
    final Membranas membranas;
    final id = dto.partographId;

  
    switch (dto.posicion) {
      case 'vertical':
        posicion = const PosicionVertical();
      case 'horizontal':
        posicion = const PosicionHorizontal();
      default:
        posicion = const PosicionInit();
        break;
    }

    /// The code snippet you provided is a switch statement that is used to assign a value to the `paridad`
    /// variable based on the value of `dto.Paridad`.
    switch (dto.paridad) {
      case 'todas':
        paridad = const ParidadTodas();
      case 'multiparas':
        paridad = const ParidadMultiparas();
      case 'nuliparas':
        paridad = const ParidadNuliparas();
      default:
        paridad = const ParidadInit();
        break;
    }

    /// The code snippet you provided is a switch statement that is used to assign a value to the
    /// `membranas` variable based on the value of `dto.Membranas`.
    switch (dto.membranas) {
      case 'integras':
        membranas = const MembranasIntegras();
      case 'rotas':
        membranas = const MembranasRotas();

      default:
        membranas = const MembranasInit();
        break;
    }

    return WorkTime(
      partographId: id,
      posicion: posicion,
      paridad: paridad,
      membranas: membranas,
    );
  }

  static WorkTimeDto transformToMap(WorkTime model) {
    return WorkTimeDto(
      partographId: model.partographId,
      posicion: model.posicion.toString(),
      paridad: model.paridad.toString(),
      membranas: model.membranas.toString(),
    );
  }
}
