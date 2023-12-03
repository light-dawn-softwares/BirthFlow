import 'package:birthflow/src/core/general/data/models/general_local.dart';
import 'package:floor/floor.dart';

@Entity(tableName: 'medical_surveillances', foreignKeys: [
    ForeignKey(
      childColumns: ['partograph_id'],
      parentColumns: ['partograph_id'],
      entity: GeneralDto,
    ),
  ],
)
class MedicalSurveillanceDto {
  MedicalSurveillanceDto({
    this.medicalSurveillanceID,
    required this.partographID,
    required this.header,
    required this.time,
    required this.maternalPosition,
    required this.arterialPressure,
    required this.maternalPulse,
    required this.fetalHeartRate,
    required this.frequencyContractions,
    required this.contractionsDuration,
    required this.painIntensity,
    required this.painLocation,
  });

  @PrimaryKey(autoGenerate: true)
  @ColumnInfo(name: 'medical_surveillance_id')
  final int? medicalSurveillanceID;

  @ColumnInfo(name: 'partograph_id')
  final int partographID;

  @ColumnInfo(name: 'header')
  final String header;

  @ColumnInfo(name: 'time')
  final String time;

  @ColumnInfo(name: 'maternal_position')
  final String maternalPosition;

  @ColumnInfo(name: 'arterial_pressure')
  final String arterialPressure;

  @ColumnInfo(name: 'maternal_pulse')
  final String maternalPulse;

  @ColumnInfo(name: 'fetal_heart_rate')
  final String fetalHeartRate;

  @ColumnInfo(name: 'frequency_contractions')
  final String frequencyContractions;

  @ColumnInfo(name: 'contractions_duration')
  final String contractionsDuration;

  @ColumnInfo(name: 'pain_intensity')
  final String painIntensity;

  @ColumnInfo(name: 'pain_location')
  final String painLocation;

  Map<String, dynamic> toJson() {
    return {
      'medical_surveillance_id': medicalSurveillanceID,
      'partograph_id': partographID,
      'header': header,
      'time': time,
      'maternal_position': maternalPosition,
      'arterial_pressure': arterialPressure,
      'maternal_pulse': maternalPulse,
      'fetal_heart_rate': fetalHeartRate,
      'frequency_contractions': frequencyContractions,
      'contractions_duration': contractionsDuration,
      'pain_intensity': painIntensity,
      'pain_location': painLocation,
    };
  }
}
