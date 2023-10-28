// ignore: avoid_classes_with_only_static_members
class Helper {
  static double transformToDecimal(DateTime dateTime) {
    final hour = dateTime.hour;
    final minutes = dateTime.minute;

    final double result = hour + (minutes / 60.0);

    return result;
  }

  static double mapValue(double value) {
    return ((value - 90) / (200 - 90)) * (11 - 0) + 0;
  }
}
