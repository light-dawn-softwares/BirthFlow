import 'package:freezed_annotation/freezed_annotation.dart';

part 'paridad.freezed.dart';

@freezed
class Paridad with _$Paridad {
  const factory Paridad.init() = ParidadInit;
  const factory Paridad.todas() = ParidadTodas;
  const factory Paridad.multiparas() = ParidadMultiparas;
  const factory Paridad.nuliparas() = ParidadNuliparas;

  const Paridad._();

  bool get isInit => this is ParidadInit;
  bool get isTodas => this is ParidadTodas;
  bool get isNuliparas => this is ParidadNuliparas;
  bool get isMultiparas => this is ParidadMultiparas;

  @override
  String toString() {
    return when(init: ()=> 'init', todas: () => 'todas', multiparas: ()=> 'multiparas', nuliparas: ()=> 'nuliparas');
  }
}
