import 'package:freezed_annotation/freezed_annotation.dart';

part 'posicion.freezed.dart';

@freezed
class Posicion with _$Posicion {
  const factory Posicion.init() = PosicionInit;
  const factory Posicion.vertical() = PosicionVertical;
  const factory Posicion.horizontal() = PosicionHorizontal;

  const Posicion._();

  bool get isInit => this is PosicionInit;
  bool get isVertical => this is PosicionVertical;
  bool get isHorizontal => this is PosicionHorizontal;

  @override
  String toString() {
    return when(
        init: () => 'init',
        vertical: () => 'vertical',
        horizontal: () => 'horizontal',);
  }
}
