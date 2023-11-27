class CervicalDilation {
  final int idCervicalDilation;
  final int partographId;
  final double value;
  final DateTime time;
  final bool ramOrRem;

  const CervicalDilation({
    required this.idCervicalDilation,
    required this.partographId,
    required this.value,
    required this.time,
    required this.ramOrRem,
  });
}
