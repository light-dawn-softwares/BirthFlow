// ignore_for_file: constant_identifier_names

enum HodgePlanePosition {
  I(10),
  I_II(8.5),
  II(7),
  II_III(5.5),
  III(4),
  III_IV(2.5),
  IV(1);

  const HodgePlanePosition(this.value);

  final double value;
}

extension HodgePlanePositionExtension on HodgePlanePosition {
  String get valueAsString {
    switch (this) {
      case HodgePlanePosition.I:
        return 'I';
      case HodgePlanePosition.I_II:
        return 'I_II';
      case HodgePlanePosition.II:
        return 'II';
      case HodgePlanePosition.II_III:
        return 'II_III';
      case HodgePlanePosition.III:
        return 'III';
      case HodgePlanePosition.III_IV:
        return 'III_IV';
      case HodgePlanePosition.IV:
        return 'IV';
      default:
        return '';
    }
  }
}

enum Plane {
  OIA('OIA'),
  OIT('OIT'),
  OIP('OIP'),
  ODA('ODA'),
  ODT('ODT'),
  ODP('ODP');

  const Plane(this.value);

  final String value;
}

class HodgePlane {
  final int? idPresentation;
  final int idPartograph;
  final HodgePlanePosition position;
  final Plane plane;
  final DateTime time;

  HodgePlane({
    this.idPresentation,
    required this.idPartograph,
    required this.position,
    required this.plane,
    required this.time,
  });
}
