import 'dart:async';
import 'package:birthflow/src/core/cervical_dilation/data/datasources/cervical_dilation_dao.dart';
import 'package:birthflow/src/core/cervical_dilation/data/models/cervical_dilation_dto.dart';
import 'package:birthflow/src/core/general/data/datasources/general_dao.dart';
import 'package:birthflow/src/core/general/data/models/general_local.dart';
import 'package:birthflow/src/core/medical_surveillance/data/datasources/medical_surveillance_dao.dart';
import 'package:birthflow/src/core/medical_surveillance/data/models/medical_surveillance_local.dart';
import 'package:birthflow/src/core/observations/data/datasources/observation_dao.dart';
import 'package:birthflow/src/core/observations/data/models/observation_local.dart';
import 'package:birthflow/src/core/vpp/data/datasources/vpp_dao.dart';
import 'package:birthflow/src/core/vpp/data/models/vpp_local.dart';
import 'package:birthflow/src/core/work_time/data/datasources/work_time_dao.dart';
import 'package:birthflow/src/core/work_time/data/model/work_time_local.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart'; // the generated code will be there

@Database(
  version: 1,
  entities: [
    GeneralDto,
    WorkTimeDto,
    ObservationDto,
    VppDto,
    CervicalDilationDto,
    MedicalSurveillanceDto,
  ],
)
abstract class AppDatabase extends FloorDatabase {
  GeneralDao get generalDao;
  WorkTimeDao get workTimeDao;
  ObservationDao get observationDao;
  VppDao get vppDao;
  CervicalDilationDao get cervicalDilationDao;
  MedicalSurveillanceDao get medicalSurveillanceDao;
}
