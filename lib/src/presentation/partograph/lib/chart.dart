import 'package:birthflow/src/utils/chart/models/chart_data.dart';
import 'package:birthflow/src/utils/chart/models/chart_point.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class ShortChart extends StatelessWidget {
  final List<charts.Series<dynamic, num>> seriesList;
  final bool animate;
  final DateTime startDate;
  const ShortChart(
    this.seriesList,
    this.startDate, {
    super.key,
    this.animate = false,
  });

  @override
  Widget build(BuildContext context) {
    return charts.NumericComboChart(
      seriesList,
      animate: animate,

      defaultRenderer: charts.LineRendererConfig(),

      primaryMeasureAxis: const charts.NumericAxisSpec(),

      /// This is an OrdinalAxisSpec to match up with BarChart's default
      /// ordinal domain axis (use NumericAxisSpec or DateTimeAxisSpec for
      /// other charts).
      domainAxis: const charts.NumericAxisSpec(
        // Make sure that we draw the domain axis line.
        showAxisLine: true,
        // But don't draw anything else.
      ),

      // Custom renderer configuration for the line series.
      customSeriesRenderers: [
        charts.LineRendererConfig(
          customRendererId: 'alertCurveLine',
          includePoints: true,
          layoutPaintOrder: charts.LayoutViewPaintOrder.point + 2,
        ),
        charts.LineRendererConfig(
          customRendererId: 'alertNewCurveLine',
          includePoints: true,
          layoutPaintOrder: charts.LayoutViewPaintOrder.point + 1,
        ),
      ],
      behaviors: [
        charts.RangeAnnotation([
          charts.LineAnnotationSegment(
            4.5,
            charts.RangeAnnotationAxisType.measure,
            startLabel: 'Linea Base desde que inicia la curva de alerta',
            color: charts.MaterialPalette.gray.shadeDefault,
          ),
        ]),
      ],
    );
  }
}

// ignore: avoid_classes_with_only_static_members
class ShortData {
  static List<charts.Series<ChartPoint, double>> createSampleData(
    ChartData partograph,
  ) {
    final nuevaCurvaAlerta = charts.Series<ChartPoint, double>(
      id: 'Nueva Curva Alerta',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      domainFn: (ChartPoint point, _) => point.x,
      measureFn: (ChartPoint point, _) => point.y,
      data: partograph.newAlertCurve,
    )..setAttribute(charts.rendererIdKey, 'alertNewCurveLine');
    final curvaAlerta = charts.Series<ChartPoint, double>(
      id: 'Curva de Alerta',
      colorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault,
      domainFn: (ChartPoint point, _) => point.x,
      measureFn: (ChartPoint point, _) => point.y,
      data: partograph.alertCurve,
    )..setAttribute(charts.rendererIdKey, 'alertCurveLine');

    final curvaReal = charts.Series<ChartPoint, double>(
      id: 'realCurveLine',
      displayName: '',
      colorFn: (_, __) => charts.MaterialPalette.black,
      domainFn: (ChartPoint point, _) => point.x,
      measureFn: (ChartPoint point, _) => point.y,
      data: partograph.realCurve,
    );
    return [
      if (partograph.newAlertCurve.isNotEmpty) nuevaCurvaAlerta,
      if (partograph.alertCurve.isNotEmpty) curvaAlerta,
      if (partograph.realCurve.isNotEmpty) curvaReal,
    ];
  }
}

class PointsLineChart extends StatelessWidget {
  final List<charts.Series<dynamic, num>> seriesList;
  final bool animate;

  const PointsLineChart(this.seriesList, {required this.animate});

  factory PointsLineChart.withSampleData() {
    return PointsLineChart(
      _createSampleData(),
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.LineChart(
      seriesList,
      animate: animate,
      defaultRenderer: charts.LineRendererConfig(includePoints: true),
      primaryMeasureAxis: const charts.NumericAxisSpec(
        renderSpec: charts.NoneRenderSpec(),
      ),
      domainAxis: const charts.NumericAxisSpec(
        //showAxisLine: true,
        renderSpec: charts.NoneRenderSpec(),
      ),
      defaultInteractions: false,
      behaviors: [
        charts.LinePointHighlighter(
          showVerticalFollowLine:
              charts.LinePointHighlighterFollowLineType.none,
          showHorizontalFollowLine:
              charts.LinePointHighlighterFollowLineType.none,
        ),
      ],
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      LinearSales(0, 5),
      LinearSales(1, 7),
      LinearSales(2, 10),
      LinearSales(3, 15),
    ];

    return [
      charts.Series<LinearSales, int>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      ),
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}
