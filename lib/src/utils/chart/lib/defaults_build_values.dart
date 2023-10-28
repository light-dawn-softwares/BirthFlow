import 'package:birthflow/src/core/work_time/domain/models/work_time.dart';

class CurveDefaultData {
  final Duration time;
  final double cervicalDilation;

  CurveDefaultData({
    required this.time,
    required this.cervicalDilation,
  });
}

// ignore: avoid_classes_with_only_static_members
class DefaultBuildValues {
  static final Map<String, List<CurveDefaultData>> curveDataMap = {
    'state1': [
      CurveDefaultData(
        time: const Duration(hours: 2, minutes: 10),
        cervicalDilation: 6,
      ),
      CurveDefaultData(
        time: const Duration(hours: 1, minutes: 15),
        cervicalDilation: 7,
      ),
      CurveDefaultData(
        time: const Duration(hours: 1),
        cervicalDilation: 8,
      ),
      CurveDefaultData(time: const Duration(minutes: 35), cervicalDilation: 9),
      CurveDefaultData(time: const Duration(minutes: 25), cervicalDilation: 10),
      CurveDefaultData(time: const Duration(minutes: 15), cervicalDilation: 11),
    ],
    'state2': [
      CurveDefaultData(
        time: const Duration(hours: 2, minutes: 30),
        cervicalDilation: 6,
      ),
      CurveDefaultData(
        time: const Duration(hours: 1, minutes: 25),
        cervicalDilation: 7,
      ),
      CurveDefaultData(time: const Duration(minutes: 55), cervicalDilation: 8),
      CurveDefaultData(time: const Duration(minutes: 40), cervicalDilation: 9),
      CurveDefaultData(time: const Duration(minutes: 25), cervicalDilation: 10),
      CurveDefaultData(time: const Duration(minutes: 15), cervicalDilation: 11),
    ],
    'state3': [
      CurveDefaultData(
        time: const Duration(hours: 2, minutes: 30),
        cervicalDilation: 6,
      ),
      CurveDefaultData(
        time: const Duration(hours: 1, minutes: 5),
        cervicalDilation: 7,
      ),
      CurveDefaultData(time: const Duration(minutes: 35), cervicalDilation: 8),
      CurveDefaultData(time: const Duration(minutes: 25), cervicalDilation: 9),
      CurveDefaultData(time: const Duration(minutes: 10), cervicalDilation: 10),
      CurveDefaultData(time: const Duration(minutes: 5), cervicalDilation: 11),
    ],
    'state4': [
      CurveDefaultData(
        time: const Duration(hours: 3, minutes: 15),
        cervicalDilation: 6,
      ),
      CurveDefaultData(
        time: const Duration(hours: 1, minutes: 30),
        cervicalDilation: 7,
      ),
      CurveDefaultData(time: const Duration(hours: 1), cervicalDilation: 8),
      CurveDefaultData(time: const Duration(minutes: 40), cervicalDilation: 9),
      CurveDefaultData(time: const Duration(minutes: 35), cervicalDilation: 10),
      CurveDefaultData(time: const Duration(minutes: 30), cervicalDilation: 11),
    ],
    'state5': [
      CurveDefaultData(
        time: const Duration(hours: 2, minutes: 30),
        cervicalDilation: 6,
      ),
      CurveDefaultData(
        time: const Duration(hours: 1, minutes: 15),
        cervicalDilation: 7,
      ),
      CurveDefaultData(
        time: const Duration(hours: 1, minutes: 5),
        cervicalDilation: 8,
      ),
      CurveDefaultData(time: const Duration(minutes: 50), cervicalDilation: 9),
      CurveDefaultData(time: const Duration(minutes: 35), cervicalDilation: 10),
      CurveDefaultData(time: const Duration(minutes: 20), cervicalDilation: 11),
    ],
  };

  static List<CurveDefaultData> curveAlert(WorkTime workTime) {
    final key = _getStateKey(workTime);
    return curveDataMap[key] ?? [];
  }

  static List<CurveDefaultData> newCurveAlert(WorkTime workTime) {
    final key = _getStateKey(workTime);
    return curveDataMap[key] ?? [];
  }

  static String _getStateKey(WorkTime workTime) {
    if (workTime.state1) {
      return 'state1';
    } else if (workTime.state2) {
      return 'state2';
    } else if (workTime.state3) {
      return 'state3';
    } else if (workTime.state4) {
      return 'state4';
    } else if (workTime.state5) {
      return 'state5';
    } else {
      return '';
    }
  }
}
