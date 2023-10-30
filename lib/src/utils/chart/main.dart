import 'package:birthflow/src/utils/chart/models/chart_data.dart';
import 'package:birthflow/src/utils/chart/models/chart_point.dart';
import 'package:birthflow/src/utils/chart/renderer/symbols.dart';
import 'package:birthflow/src/utils/chart/widgets/tooltip.dart';
import 'package:charts_common/common.dart' as common
    show TriangleSymbolRenderer;
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class MainChart extends StatelessWidget {
  final List<charts.Series<dynamic, num>> seriesList;
  final bool animate;
  final DateTime startDate;
  const MainChart(
    this.seriesList,
    this.startDate, {
    super.key,
    this.animate = false,
  });

  @override
  Widget build(BuildContext context) {
    final secondaryMeasureFormatter = charts.BasicNumericTickFormatterSpec((value) {
      if (value! >= 0 && value <= 11) {
        return (90 + value * 10).toString();
      } else {
        return '0';
      }
    });

    final domainFormatter = charts.BasicNumericTickFormatterSpec((value) {
      final DateTime startTime = startDate;

      final int time = startTime.hour + value!.toInt();
      final int result = (time > 24) ? (time - 24) : time;

      return (startTime.minute >= 0 && startTime.minute < 10)
          ? '$result:0${startTime.minute}'
          : '$result:${startTime.minute}';
    });

    final primaryMeasureFormatter = charts.BasicNumericTickFormatterSpec((value) {
      if (value == 11) {
        return 'Parto';
      } else {
        return value!.round().toString();
      }
    });

    return charts.ScatterPlotChart(
      seriesList,
      animate: animate,

      primaryMeasureAxis: charts.NumericAxisSpec(
        tickProviderSpec: const charts.BasicNumericTickProviderSpec(
          dataIsInWholeNumbers: true,
          desiredTickCount: 12,
        ),
        tickFormatterSpec: primaryMeasureFormatter,
      ),

      secondaryMeasureAxis: charts.NumericAxisSpec(
        tickProviderSpec: const charts.BasicNumericTickProviderSpec(
          dataIsInWholeNumbers: true,
          desiredTickCount: 12,
        ),
        tickFormatterSpec: secondaryMeasureFormatter,
      ),

      domainAxis: charts.NumericAxisSpec(
        tickProviderSpec: const charts.BasicNumericTickProviderSpec(
          dataIsInWholeNumbers: true,
          desiredTickCount: 16,
        ),
        tickFormatterSpec: domainFormatter,
      ),

      defaultRenderer: charts.PointRendererConfig<num>(
        customSymbolRenderers: {
          'circle': charts.CircleSymbolRenderer(),
          'rect': charts.RectSymbolRenderer(),
          'triangle': common.TriangleSymbolRenderer(),
          'OIA': OiaSymbolRenderer(),
          'OIT': OitSymbolRenderer(),
          'OIP': OipSymbolRenderer(),
          'ODA': OdaSymbolRenderer(),
          'ODT': OdtSymbolRenderer(),
          'ODP': OdpSymbolRenderer(),
        },
      ),

      // Custom renderer configuration for the line series.
      customSeriesRenderers: [
        charts.LineRendererConfig(
          customRendererId: 'realCurveLine',
          includePoints: true,
          layoutPaintOrder: charts.LayoutViewPaintOrder.point + 3,
        ),
        charts.LineRendererConfig(
          customRendererId: 'alertCurveLine',
          includePoints: true,
          layoutPaintOrder: charts.LayoutViewPaintOrder.point + 2,
        ),
        charts.LineRendererConfig(
          customRendererId: 'alertNewCurveLine',
          includePoints: true,
          layoutPaintOrder: charts.LayoutViewPaintOrder.point + 1,
        )
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
        charts.ChartTitle(
          'Dilatacion Cervical (cm)',
          behaviorPosition: charts.BehaviorPosition.start,
          outerPadding: 2,
          titleOutsideJustification: charts.OutsideJustification.middleDrawArea,
        ),
        charts.SeriesLegend(
          position: charts.BehaviorPosition.bottom,
          horizontalFirst: true,
          cellPadding:
              const EdgeInsets.only(right: 1.0, bottom: 4.0, left: 2.0),
          showMeasures: false,
          entryTextStyle: const charts.TextStyleSpec(fontSize: 10),
          legendDefaultMeasure: charts.LegendDefaultMeasure.firstValue,
        ),
        charts.LinePointHighlighter(
          showHorizontalFollowLine:
              charts.LinePointHighlighterFollowLineType.none,
          showVerticalFollowLine:
              charts.LinePointHighlighterFollowLineType.nearest,
          selectionModelType: charts.SelectionModelType.info,
          symbolRenderer: TooltipSymbolRenderer(),
        ),
        charts.SelectNearest(),
      ],

      selectionModels: [
        charts.SelectionModelConfig(
          changedListener: (charts.SelectionModel model) {
            if (model.hasDatumSelection) {
              final double value = model.selectedSeries[0]
                  .domainFn(model.selectedDatum[0].index) as double;
              final int hour = value.truncate();
              final double minuteDecimal = value % 1;
              final int minute = (minuteDecimal * 60).toInt();

              final DateTime firstTime = startDate;
              final int actualHour = (firstTime.hour + hour) % 24;
              final int actualMinute = (firstTime.minute + minute) % 60;

              final String result =
                  'Hora: ${actualHour.toString().padLeft(2, '0')}:${actualMinute.toString().padLeft(2, '0')}';
              TooltipSymbolRenderer.value = result; // paints the tapped value
            }
          },
        )
      ],
    );
  }
}

// ignore: avoid_classes_with_only_static_members
class Data {
  static List<charts.Series<ChartPoint, double>> createSampleData(
    ChartData partograph,
  ) {
    final nuevaCurvaAlerta = charts.Series<ChartPoint, double>(
      id: 'Nueva Curva Alerta',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      domainFn: (ChartPoint point, _) => point.x,
      measureFn: (ChartPoint point, _) => point.y,
      data: partograph.newAlertCurve,
    )
      // Configure our custom line renderer for this series.
      ..setAttribute(charts.rendererIdKey, 'alertNewCurveLine');
    final curvaAlerta = charts.Series<ChartPoint, double>(
      id: 'Curva de Alerta',
      colorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault,
      domainFn: (ChartPoint point, _) => point.x,
      measureFn: (ChartPoint point, _) => point.y,
      data: partograph.alertCurve,
    )
      // Configure our custom line renderer for this series.
      ..setAttribute(charts.rendererIdKey, 'alertCurveLine');

    final curvaReal = charts.Series<ChartPoint, double>(
      id: 'Curva Real',
      colorFn: (_, __) => charts.MaterialPalette.black,
      domainFn: (ChartPoint point, _) => point.x,
      measureFn: (ChartPoint point, _) => point.y,
      data: partograph.realCurve,
    )
      ..setAttribute(charts.measureAxisIdKey, 'secondaryMeasureAxisId')
      ..setAttribute(charts.rendererIdKey, 'realCurveLine');
    final medicalSurveillancePoints = charts.Series<ChartPoint, double>(
      id: 'MedicalSurveillance',
      displayName: '',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      domainFn: (ChartPoint point, _) => point.x,
      measureFn: (ChartPoint point, _) => point.y,
      radiusPxFn: (ChartPoint point, _) => point.radius,
      fillColorFn: (ChartPoint point, _) => point.fillColor,
      strokeWidthPxFn: (ChartPoint point, _) => point.strokeWidth,
      data: partograph.others,
    )..setAttribute(
        charts.pointSymbolRendererFnKey,
        (int? index) => partograph.others[index!].shape!,
      );
    return [
      if (partograph.others.isNotEmpty) medicalSurveillancePoints,
      if (partograph.newAlertCurve.isNotEmpty) nuevaCurvaAlerta,
      if (partograph.alertCurve.isNotEmpty) curvaAlerta,
      if (partograph.realCurve.isNotEmpty) curvaReal,
    ];
  }
}
