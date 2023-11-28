import 'package:birthflow/src/core/vpp/domain/models/vpp.dart';
import 'package:birthflow/src/utils/chart/generators/generator_interface.dart';
import 'package:birthflow/src/utils/chart/lib/helper.dart';
import 'package:birthflow/src/utils/chart/models/chart_point.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class HodgePlaneGenerator implements IGenerator {
  final List<Vpp> hodgePlaneList;
  final double firstPoint;

  HodgePlaneGenerator({
    required this.hodgePlaneList,
    required this.firstPoint,
  }) {
    _generate();
  }

  List<ChartPoint>? _chartPoint;

  @override
  List<ChartPoint>? get chartPoint => _chartPoint;

  void _generate() {
    List<ChartPoint> points;
    points = [];
    for (var index = 0; index < hodgePlaneList.length; index++) {
      final timeDecimalValue =
          Helper.transformToDecimal(hodgePlaneList[index].time);

      final timeResult = timeDecimalValue - firstPoint;

      final double y = hodgePlaneList[index].hodgePlanePosition.value;
      final currentPoint = ChartPoint(
        x: timeResult,
        y: y,
        radius: 10,
        strokeWidth: 2,
        fillColor: charts.Color.transparent,
        shape: hodgePlaneList[index].position.value,
      );

      points.add(currentPoint);
    }
    _chartPoint = points;
  }
}
