import 'package:freezed_annotation/freezed_annotation.dart';

part 'membranas.freezed.dart';

@freezed
class Membranas with _$Membranas {
  const factory Membranas.init() = MembranasInit;
  const factory Membranas.integras() = MembranasIntegras;
  const factory Membranas.rotas() = MembranasRotas;

  const Membranas._();

  bool get isInit => this is MembranasInit;
  bool get isIntegras => this is MembranasIntegras;
  bool get isRotas => this is MembranasRotas;
  
  @override
  String toString() {
    
    return when(
        init: () => 'init',
        integras: () => 'integras',
        rotas: () => 'rotas',);
  }
}
