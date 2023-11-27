import 'package:birthflow/src/core/vpp/data/models/vpp_local.dart';
import 'package:birthflow/src/core/vpp/domain/models/vpp.dart';

// ignore: avoid_classes_with_only_static_members
class VppLocalMapper {
  static VppDto transformToDto(Vpp vpp) {
    return VppDto(
      idVpp: vpp.idPresentation ?? -1,
      partographId: vpp.partographId,
      position: vpp.position.value,
      hodgePlane: vpp.hodgePlanePosition.valueAsString,
      time: vpp.time.toIso8601String(),
    );
  }

  static Vpp transformToModel(VppDto vppDto) {
    return Vpp(
      idPresentation: vppDto.idVpp == -1 ? null : vppDto.idVpp,
      partographId: vppDto.partographId,
      hodgePlanePosition:
          HodgePlanePositionExtension(vppDto.hodgePlane).asHodgePlanePosition,
      position: PositionExtension(vppDto.position).asPosition,
      time: DateTime.parse(vppDto.time),
    );
  }
}

extension HodgePlanePositionExtension on String {
  HodgePlanePosition get asHodgePlanePosition {
    switch (this) {
      case 'I':
        return HodgePlanePosition.I;
      case 'II':
        return HodgePlanePosition.II;
      case 'III':
        return HodgePlanePosition.III;
      case 'IV':
        return HodgePlanePosition.IV;
      default:
      throw ArgumentError('Invalid HODGE position value');
    }
  }
}

extension PositionExtension on String {
  Position get asPosition {
    switch (this) {
      case 'OIIA':
        return Position.OIA;
      case 'OIIT':
        return Position.OIT;
      case 'OIIP':
        return Position.OIP;
      case 'OIDA':
        return Position.ODA;
      case 'OIDT':
        return Position.ODT;
      case 'OIDP':
        return Position.ODP;
      case 'OP':
        return Position.OP;
      case 'OS':
        return Position.OS;
      default:
        throw ArgumentError('Invalid position value');
    }
  }
}
