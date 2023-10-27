class Pain {
  final int idMedicalSurve;
  late String location;
  late String intensity;

  Pain({
    required this.idMedicalSurve,
    required this.location,
    required this.intensity,
  });

  String get textFieldValue => '$location / $intensity';

  String get painValue => '$location / \n $intensity';
}
