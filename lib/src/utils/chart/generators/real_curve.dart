import 'package:birthflow/src/core/cervical_dilation/domain/models/cervical_dilation.dart';
import 'package:birthflow/src/utils/chart/generators/generator_interface.dart';
import 'package:birthflow/src/utils/chart/models/chart_point.dart';

class RealCurveGenerator implements IGenerator {
  RealCurveGenerator({required List<CervicalDilation> cervicalList}) {
    _generate(cervicalList);
  }

  List<ChartPoint>? _chartPoint;

  @override
  List<ChartPoint>? get chartPoint => _chartPoint;

  void _generate(List<CervicalDilation> cervicalList) {
    final List<ChartPoint> generatedPoint = [];

    //Variable que almacena la suma del tiempo en decimal de la entidad Cervical dilation
    double lastDigit = 0;

    generatedPoint.add(
      ChartPoint(
        x: lastDigit,
        y: cervicalList[0].value,
        radius: 1,
        shape: '',
        strokeWidth: 1,
      ),
    );

    for (int index = 1; index <= cervicalList.length - 1; index++) {
      final double previousItemTime = cervicalList[index - 1].time.hour +
          cervicalList[index - 1].time.minute / 60;

      final double currentItemTime =
          cervicalList[index].time.hour + cervicalList[index].time.minute / 60;

      final double result = (currentItemTime - previousItemTime) + lastDigit;

      /*Se agrega el elemento a la lista */
      generatedPoint.add(
        ChartPoint(
          x: result,
          y: cervicalList[index].value,
          radius: 1,
          shape: '',
          strokeWidth: 1,
        ),
      );
      lastDigit = result;
    }

    _chartPoint = generatedPoint;
  }
}
