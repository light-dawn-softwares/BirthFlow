import 'dart:math';

import 'package:charts_flutter/flutter.dart' as e;
// ignore: implementation_imports
import 'package:charts_flutter/src/text_element.dart';
// ignore: implementation_imports
import 'package:charts_flutter/src/text_style.dart' as style;

class TooltipSymbolRenderer extends e.CircleSymbolRenderer {
  static String value = '';
  @override
  void paint(
    e.ChartCanvas canvas,
    Rectangle<num> bounds, {
    List<int>? dashPattern,
    e.Color? fillColor,
    e.FillPatternType? fillPattern,
    e.Color? strokeColor,
    double? strokeWidthPx,
  }) {
    super.paint(
      canvas,
      bounds,
      dashPattern: dashPattern,
      fillColor: fillColor,
      fillPattern: fillPattern,
      strokeColor: strokeColor,
      strokeWidthPx: strokeWidthPx,
    );
    canvas.drawRect(
      Rectangle(
        bounds.left - 10,
        bounds.top + 24,
        bounds.width + 75,
        bounds.height + 10,
      ),
      fill: e.Color.fromHex(code: '#E9E9E9'),
    );
    final textStyle = style.TextStyle();
    textStyle.color = e.Color.black;
    textStyle.fontSize = 15;
    canvas.drawText(
      TextElement(value, style: textStyle),
      bounds.left.round(),
      (bounds.top + 28).round(),
    );
  }
}
