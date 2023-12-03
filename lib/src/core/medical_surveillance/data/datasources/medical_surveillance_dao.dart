import 'package:birthflow/src/core/medical_surveillance/data/models/medical_surveillance_local.dart';
import 'package:floor/floor.dart';

@dao
abstract class MedicalSurveillanceDao {
  @Query(
    'SELECT * FROM medical_surveillances WHERE medical_surveillance_id = :medicalSurveillanceID',
  )
  Future<List<MedicalSurveillanceDto>> findMedicalSurveillanceById(
    int medicalSurveillanceID,
  );

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertMedicalSurveillance(
    MedicalSurveillanceDto medicalSurveillance,
  );

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateMedicalSurveillance(
    MedicalSurveillanceDto medicalSurveillance,
  );

  @Query(
    'DELETE FROM medical_surveillances WHERE medical_surveillance_id = :medicalSurveillanceID',
  )
  Future<void> deleteMedicalSurveillance(int medicalSurveillanceID);
}
