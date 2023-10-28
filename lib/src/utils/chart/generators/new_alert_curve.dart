import 'package:birthflow/src/core/cervical_dilation/domain/models/cervical_dilation.dart';
import 'package:birthflow/src/core/work_time/domain/models/work_time.dart';
import 'package:birthflow/src/utils/chart/generators/generator_interface.dart';
import 'package:birthflow/src/utils/chart/helpers/mapper.dart';
import 'package:birthflow/src/utils/chart/lib/curve_creator.dart';
import 'package:birthflow/src/utils/chart/lib/defaults_build_values.dart';
import 'package:birthflow/src/utils/chart/models/chart_point.dart';
import 'package:birthflow/src/utils/chart/models/curve_data.dart';

class NewAlertCurveGenerator implements IGenerator {
  NewAlertCurveGenerator({
    required WorkTime workTime,
    required List<CervicalDilation> cervicalList,
  }) {
    final result = _generate(workTime, cervicalList);
    _curveData = result;

    _chartPoint = ChartMapper.transformToChartPoint(data: result);
  }

  List<ChartPoint>? _chartPoint;

  @override
  List<ChartPoint>? get chartPoint => _chartPoint;

  List<CurveData>? _curveData;
  List<CurveData>? get curveData => _curveData;

  List<CurveData> _generate(
    WorkTime workTime,
    List<CervicalDilation> cervicalList,
  ) {
    final DateTime now = DateTime.now();
    final estateSelected = cervicalList.firstWhere(
      (dropdown) => dropdown.ramOrRem == true,
      orElse: () => CervicalDilation(
        idCervicalDilation: 0,
        idPartograph: 0,
        value: 0,
        time: DateTime.now(),
        ramOrRem: false,
      ),
    );
    
    final defaultValue = DefaultBuildValues.curveAlert(workTime);
    final newDefaultValue = DefaultBuildValues.newCurveAlert(workTime);
    final realCurve = ChartMapper.transformToCurveDataList(cervicalList);

    if (cervicalList.isNotEmpty &&
        !workTime.paridad.isInit &&
        !workTime.membranas.isInit &&
        !workTime.posicion.isInit) {
      /*En caso que el primer punto de la curva real sea mayor a 4.5 se genera la curva de alerta sin ningun cambio o alteracion ,
          en caso contrario se analiza si el siguiente punto es mayor a 4.5 y retornar la curva a partir de ese punto, 
          en el caso que se supere el 4.5 se inicia el punto en Y desde 4.5 y X apartir de x posicion utilizando la ecuacion de 
          la pendiente */
      if (cervicalList.first.value >= 4.5) {
        return CurveCreator(realCurve.first, defaultValue).newAlertCurve(
          breakList: newDefaultValue,
          fork: estateSelected.value,
        );
      } else {
        if (realCurve.length >= 2) {
          // ignore: prefer_typing_uninitialized_variables
          CurveData? data;
          for (int index = 1; index <= realCurve.length - 1; index++) {
            if (realCurve[index - 1].cervicalDilation <= 4.5 &&
                realCurve[index].cervicalDilation >= 4.5) {
              final minute1 = realCurve[index - 1].time.minute / 60.0;

              final minute2 = realCurve[index].time.minute / 60.0;

              final x1 = realCurve[index - 1].time.hour + minute1;

              final x2 = realCurve[index].time.hour + minute2;

              //Punto y del elemento anterior
              final double y1 = realCurve[index - 1].cervicalDilation;

              //Punto y del elemento actual
              final y2 = realCurve[index].cervicalDilation;

              final m = (y2 - y1) / (x2 - x1);
              final b = y1 - (m * x1);

              final x = (4.5 - b) / m;
              final int hora = x.floor();
              final int minutos = ((x - hora) * 60).round();

              data = CurveData(
                time: DateTime(now.year, now.month, now.day, hora, minutos),
                cervicalDilation: 4.5,
              );
            }
          }
          return CurveCreator(data!, defaultValue).newAlertCurve(
            breakList: newDefaultValue,
            fork: estateSelected.value,
          );
        } else {
          return [];
        }
      }
    } else {
      return [];
    }
  }
}
