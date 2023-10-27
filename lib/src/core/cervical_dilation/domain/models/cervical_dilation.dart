class CervicalDilation {
  final int idCervicalDilation;
  final int idPartograph;
  final double value;
  final DateTime time;
  final bool ramOrRem;

  const CervicalDilation({
    required this.idCervicalDilation,
    required this.idPartograph,
    required this.value,
    required this.time,
    required this.ramOrRem,
  });
}
