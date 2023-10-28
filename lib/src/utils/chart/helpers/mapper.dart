import 'package:birthflow/src/core/cervical_dilation/domain/models/cervical_dilation.dart';
import 'package:birthflow/src/utils/chart/models/chart_point.dart';
import 'package:birthflow/src/utils/chart/models/curve_data.dart';

// ignore: avoid_classes_with_only_static_members
class ChartMapper {
  static CurveData transformToCurveData(CervicalDilation cervicalDilation) {
    final DateTime now = DateTime.now();
    return CurveData(
      time: DateTime(
        now.year,
        now.month,
        now.day,
        cervicalDilation.time.hour,
        cervicalDilation.time.minute,
      ),
      cervicalDilation: cervicalDilation.value,
    );
  }

  static List<CurveData> transformToCurveDataList(
    List<CervicalDilation> cervicalDilationList,
  ) {
    return cervicalDilationList.map((e) => transformToCurveData(e)).toList();
  }

  static List<ChartPoint> transformToChartPoint({
    required List<CurveData> data,
  }) {
    if (data.isEmpty) {
      return [];
    } else {
      final firstDate = data.first.time;

      final result = data.map((model) {
        final Duration diferencia = model.time.difference(firstDate);
        final double diferences = diferencia.inSeconds / 3600.0;
        return ChartPoint(
          x: diferences,
          y: model.cervicalDilation,
          radius: 1,
          strokeWidth: 1,
        );
      }).toList();
      return result;
    }
  }
}
