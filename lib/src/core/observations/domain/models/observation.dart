class Observation {
  final int? msObservationID;
  final int partographID;
  final String header;
  final String description;

  Observation({
    this.msObservationID,
    required this.partographID,
    required this.header,
    required this.description,
  });
}
