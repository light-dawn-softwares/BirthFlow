// ignore_for_file: constant_identifier_names

enum HodgePlanePosition {
  I(9.5),
  II(6.5),
  III(3.5),
  IV(1);

  const HodgePlanePosition(this.value);

  final double value;
}

extension HodgePlanePositionExtensionString on HodgePlanePosition {
  String get valueAsString {
    switch (this) {
      case HodgePlanePosition.I:
        return 'I';
      case HodgePlanePosition.II:
        return 'II';
      case HodgePlanePosition.III:
        return 'III';
      case HodgePlanePosition.IV:
        return 'IV';
      default:
        return '';
    }
  }
}

enum Position {
  OIA('OIIA'),
  OIT('OIIT'),
  OIP('OIIP'),
  ODA('OIDA'),
  ODT('OIDT'),
  ODP('OIDP'),
  OP('OP'),
  OS('OS');

  const Position(this.value);

  final String value;
}

class Vpp {
  final int? idPresentation;
  final int partographId;
  final HodgePlanePosition hodgePlanePosition;
  final Position position;
  final DateTime time;

  Vpp({
    this.idPresentation,
    required this.partographId,
    required this.hodgePlanePosition,
    required this.position,
    required this.time,
  });
}
