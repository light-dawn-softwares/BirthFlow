import 'package:birthflow/src/core/general/domain/models/general.dart';
import 'package:birthflow/src/core/general/domain/usecases/create_usecase_imp.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/membranas.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/paridad.dart';
import 'package:birthflow/src/core/work_time/domain/models/lib/posicion.dart';
import 'package:birthflow/src/core/work_time/domain/usecases/create_usecase.dart';
import 'package:flutter/material.dart';

class PartographViewModel extends ChangeNotifier {
  final WorkTimeCreateUseCase _workTimeCreateUseCase;
  final GeneralCreateUseCase _generalCreateUseCase;

  PartographViewModel({
    required WorkTimeCreateUseCase workTimeCreateUseCase,
    required GeneralCreateUseCase generalCreateUseCase,
  })  : _workTimeCreateUseCase = workTimeCreateUseCase,
        _generalCreateUseCase = generalCreateUseCase;

  Future<void> createWorkTime({
    required int partographId,
    required Posicion posicion,
    required Paridad paridad,
    required Membranas membranas,
  }) async {
    try {
      await _workTimeCreateUseCase.execute(
        partographId: partographId,
        posicion: posicion,
        paridad: paridad,
        membranas: membranas,
      );
    } catch (e) {
      // Manejar errores
    }
  }

  Future<General?> createGeneral({
    required String name,
    required String recordNumber,
    required DateTime date,
  }) async {
    try {
      final result = await _generalCreateUseCase.execute(
        name: name,
        recordNumber: recordNumber,
        date: date,
      );
      return result!;
    } catch (e) {
    
     return null;   // Manejar errores
    }
   
  }
}
