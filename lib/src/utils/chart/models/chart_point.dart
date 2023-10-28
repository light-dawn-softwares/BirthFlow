import 'package:charts_flutter/flutter.dart' as charts;

class ChartPoint {
  final double x;
  final double y;
  final double radius;
  final String? shape;
  final charts.Color? fillColor;
  final double? strokeWidth;
  
  //Constructor
  ChartPoint({
    required this.x,
    required this.y,
    required this.radius,
    this.shape,
    this.fillColor,
    required this.strokeWidth,
  });
}
