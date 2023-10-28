import 'package:birthflow/src/utils/chart/models/chart_point.dart';

class ChartData {
  List<ChartPoint> _realCurve;

  List<ChartPoint> _alertCurve;

  List<ChartPoint> _newAlertCurve;

  List<ChartPoint> _others;

  //Constructor
  ChartData(
    this._realCurve,
    this._alertCurve,
    this._newAlertCurve,
    this._others,
  );

  //Getters
  List<ChartPoint> get realCurve => _realCurve;

  List<ChartPoint> get alertCurve => _alertCurve;

  List<ChartPoint> get newAlertCurve => _newAlertCurve;

  List<ChartPoint> get others => _others;

  //Setter
  set realCurve(List<ChartPoint> newData) {
    if (newData.isNotEmpty) {
      _realCurve = newData;
    }
  }

  set alertCurve(List<ChartPoint> newData) {
    if (newData.isNotEmpty) {
      _alertCurve = newData;
    }
  }

  set newAlertCurve(List<ChartPoint> newData) {
    if (newData.isNotEmpty) {
      _newAlertCurve = newData;
    }
  }

  set others(List<ChartPoint> newData) {
    if (newData.isNotEmpty) {
      _others = newData;
    }
  }
}
