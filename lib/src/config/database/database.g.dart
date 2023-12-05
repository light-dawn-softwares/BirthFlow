// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  GeneralDao? _generalDaoInstance;

  WorkTimeDao? _workTimeDaoInstance;

  ObservationDao? _observationDaoInstance;

  VppDao? _vppDaoInstance;

  CervicalDilationDao? _cervicalDilationDaoInstance;

  MedicalSurveillanceDao? _medicalSurveillanceDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `generals` (`partograph_id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT NOT NULL, `record_number` TEXT NOT NULL, `date` TEXT NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `work_times` (`partograph_id` INTEGER NOT NULL, `membranas` TEXT NOT NULL, `paridad` TEXT NOT NULL, `posicion` TEXT NOT NULL, FOREIGN KEY (`partograph_id`) REFERENCES `generals` (`partograph_id`) ON UPDATE NO ACTION ON DELETE NO ACTION, PRIMARY KEY (`partograph_id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `vpps` (`mSObservationID` INTEGER PRIMARY KEY AUTOINCREMENT, `partograph_id` INTEGER NOT NULL, `header` TEXT NOT NULL, `description` TEXT NOT NULL, FOREIGN KEY (`partograph_id`) REFERENCES `generals` (`partograph_id`) ON UPDATE NO ACTION ON DELETE NO ACTION)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `vpps` (`idVpp` INTEGER, `partograph_id` INTEGER NOT NULL, `position` TEXT NOT NULL, `hodge_plane` TEXT NOT NULL, `time` TEXT NOT NULL, FOREIGN KEY (`partograph_id`) REFERENCES `generals` (`partograph_id`) ON UPDATE NO ACTION ON DELETE NO ACTION, PRIMARY KEY (`idVpp`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `cervical_dilations` (`idCervicalDilation` INTEGER PRIMARY KEY AUTOINCREMENT, `partograph_id` INTEGER NOT NULL, `value` TEXT NOT NULL, `time` TEXT NOT NULL, `ram_or_rem` TEXT NOT NULL, FOREIGN KEY (`partograph_id`) REFERENCES `generals` (`partograph_id`) ON UPDATE NO ACTION ON DELETE NO ACTION)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `medical_surveillances` (`medical_surveillance_id` INTEGER PRIMARY KEY AUTOINCREMENT, `partograph_id` INTEGER NOT NULL, `header` TEXT NOT NULL, `time` TEXT NOT NULL, `maternal_position` TEXT NOT NULL, `arterial_pressure` TEXT NOT NULL, `maternal_pulse` TEXT NOT NULL, `fetal_heart_rate` TEXT NOT NULL, `frequency_contractions` TEXT NOT NULL, `contractions_duration` TEXT NOT NULL, `pain_intensity` TEXT NOT NULL, `pain_location` TEXT NOT NULL, FOREIGN KEY (`partograph_id`) REFERENCES `generals` (`partograph_id`) ON UPDATE NO ACTION ON DELETE NO ACTION)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  GeneralDao get generalDao {
    return _generalDaoInstance ??= _$GeneralDao(database, changeListener);
  }

  @override
  WorkTimeDao get workTimeDao {
    return _workTimeDaoInstance ??= _$WorkTimeDao(database, changeListener);
  }

  @override
  ObservationDao get observationDao {
    return _observationDaoInstance ??=
        _$ObservationDao(database, changeListener);
  }

  @override
  VppDao get vppDao {
    return _vppDaoInstance ??= _$VppDao(database, changeListener);
  }

  @override
  CervicalDilationDao get cervicalDilationDao {
    return _cervicalDilationDaoInstance ??=
        _$CervicalDilationDao(database, changeListener);
  }

  @override
  MedicalSurveillanceDao get medicalSurveillanceDao {
    return _medicalSurveillanceDaoInstance ??=
        _$MedicalSurveillanceDao(database, changeListener);
  }
}

class _$GeneralDao extends GeneralDao {
  _$GeneralDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _generalDtoInsertionAdapter = InsertionAdapter(
            database,
            'generals',
            (GeneralDto item) => <String, Object?>{
                  'partograph_id': item.partographId,
                  'name': item.name,
                  'record_number': item.recordNumber,
                  'date': item.date
                }),
        _generalDtoUpdateAdapter = UpdateAdapter(
            database,
            'generals',
            ['partograph_id'],
            (GeneralDto item) => <String, Object?>{
                  'partograph_id': item.partographId,
                  'name': item.name,
                  'record_number': item.recordNumber,
                  'date': item.date
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<GeneralDto> _generalDtoInsertionAdapter;

  final UpdateAdapter<GeneralDto> _generalDtoUpdateAdapter;

  @override
  Future<List<GeneralDto>> findAllGenerals() async {
    return _queryAdapter.queryList('SELECT * FROM generals',
        mapper: (Map<String, Object?> row) => GeneralDto(
            partographId: row['partograph_id'] as int?,
            name: row['name'] as String,
            recordNumber: row['record_number'] as String,
            date: row['date'] as String));
  }

  @override
  Future<GeneralDto?> findGeneralById(int partographId) async {
    return _queryAdapter.query(
        'SELECT * FROM generals WHERE partograph_id = ?1',
        mapper: (Map<String, Object?> row) => GeneralDto(
            partographId: row['partograph_id'] as int?,
            name: row['name'] as String,
            recordNumber: row['record_number'] as String,
            date: row['date'] as String),
        arguments: [partographId]);
  }

  @override
  Future<void> deleteGeneral(int partographId) async {
    await _queryAdapter.queryNoReturn(
        'DELETE FROM generals WHERE partograph_id = ?1',
        arguments: [partographId]);
  }

  @override
  Future<int> insertGeneral(GeneralDto general) {
    return _generalDtoInsertionAdapter.insertAndReturnId(
        general, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateGeneral(GeneralDto general) async {
    await _generalDtoUpdateAdapter.update(general, OnConflictStrategy.replace);
  }
}

class _$WorkTimeDao extends WorkTimeDao {
  _$WorkTimeDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _workTimeDtoInsertionAdapter = InsertionAdapter(
            database,
            'work_times',
            (WorkTimeDto item) => <String, Object?>{
                  'partograph_id': item.partographId,
                  'membranas': item.membranas,
                  'paridad': item.paridad,
                  'posicion': item.posicion
                }),
        _workTimeDtoUpdateAdapter = UpdateAdapter(
            database,
            'work_times',
            ['partograph_id'],
            (WorkTimeDto item) => <String, Object?>{
                  'partograph_id': item.partographId,
                  'membranas': item.membranas,
                  'paridad': item.paridad,
                  'posicion': item.posicion
                }),
        _workTimeDtoDeletionAdapter = DeletionAdapter(
            database,
            'work_times',
            ['partograph_id'],
            (WorkTimeDto item) => <String, Object?>{
                  'partograph_id': item.partographId,
                  'membranas': item.membranas,
                  'paridad': item.paridad,
                  'posicion': item.posicion
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<WorkTimeDto> _workTimeDtoInsertionAdapter;

  final UpdateAdapter<WorkTimeDto> _workTimeDtoUpdateAdapter;

  final DeletionAdapter<WorkTimeDto> _workTimeDtoDeletionAdapter;

  @override
  Future<WorkTimeDto?> findWorkTimeById(int partographId) async {
    return _queryAdapter.query(
        'SELECT * FROM work_times WHERE partographId = ?1',
        mapper: (Map<String, Object?> row) => WorkTimeDto(
            partographId: row['partograph_id'] as int,
            membranas: row['membranas'] as String,
            paridad: row['paridad'] as String,
            posicion: row['posicion'] as String),
        arguments: [partographId]);
  }

  @override
  Future<void> insertWorkTime(WorkTimeDto workTime) async {
    await _workTimeDtoInsertionAdapter.insert(
        workTime, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateWorkTime(WorkTimeDto workTime) async {
    await _workTimeDtoUpdateAdapter.update(workTime, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteWorkTime(WorkTimeDto workTime) async {
    await _workTimeDtoDeletionAdapter.delete(workTime);
  }
}

class _$ObservationDao extends ObservationDao {
  _$ObservationDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _observationDtoInsertionAdapter = InsertionAdapter(
            database,
            'vpps',
            (ObservationDto item) => <String, Object?>{
                  'mSObservationID': item.mSObservationID,
                  'partograph_id': item.partographID,
                  'header': item.header,
                  'description': item.description
                }),
        _observationDtoUpdateAdapter = UpdateAdapter(
            database,
            'vpps',
            ['mSObservationID'],
            (ObservationDto item) => <String, Object?>{
                  'mSObservationID': item.mSObservationID,
                  'partograph_id': item.partographID,
                  'header': item.header,
                  'description': item.description
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ObservationDto> _observationDtoInsertionAdapter;

  final UpdateAdapter<ObservationDto> _observationDtoUpdateAdapter;

  @override
  Future<List<ObservationDto>> getObservationById(int id) async {
    return _queryAdapter.queryList(
        'SELECT * FROM ObservationDaoEntity WHERE partographId = ?1',
        mapper: (Map<String, Object?> row) => ObservationDto(
            mSObservationID: row['mSObservationID'] as int?,
            partographID: row['partograph_id'] as int,
            header: row['header'] as String,
            description: row['description'] as String),
        arguments: [id]);
  }

  @override
  Future<void> insertObservation(ObservationDto observation) async {
    await _observationDtoInsertionAdapter.insert(
        observation, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateObservation(ObservationDto observation) async {
    await _observationDtoUpdateAdapter.update(
        observation, OnConflictStrategy.replace);
  }
}

class _$VppDao extends VppDao {
  _$VppDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _vppDtoInsertionAdapter = InsertionAdapter(
            database,
            'vpps',
            (VppDto item) => <String, Object?>{
                  'idVpp': item.idVpp,
                  'partograph_id': item.partographId,
                  'position': item.position,
                  'hodge_plane': item.hodgePlane,
                  'time': item.time
                }),
        _vppDtoUpdateAdapter = UpdateAdapter(
            database,
            'vpps',
            ['idVpp'],
            (VppDto item) => <String, Object?>{
                  'idVpp': item.idVpp,
                  'partograph_id': item.partographId,
                  'position': item.position,
                  'hodge_plane': item.hodgePlane,
                  'time': item.time
                }),
        _vppDtoDeletionAdapter = DeletionAdapter(
            database,
            'vpps',
            ['idVpp'],
            (VppDto item) => <String, Object?>{
                  'idVpp': item.idVpp,
                  'partograph_id': item.partographId,
                  'position': item.position,
                  'hodge_plane': item.hodgePlane,
                  'time': item.time
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<VppDto> _vppDtoInsertionAdapter;

  final UpdateAdapter<VppDto> _vppDtoUpdateAdapter;

  final DeletionAdapter<VppDto> _vppDtoDeletionAdapter;

  @override
  Future<List<VppDto>?> findById(int partographId) async {
    return _queryAdapter.queryList('SELECT * FROM Vvp WHERE partographId = ?1',
        mapper: (Map<String, Object?> row) => VppDto(
            idVpp: row['idVpp'] as int?,
            partographId: row['partograph_id'] as int,
            position: row['position'] as String,
            hodgePlane: row['hodge_plane'] as String,
            time: row['time'] as String),
        arguments: [partographId]);
  }

  @override
  Future<void> insertVpp(VppDto vvp) async {
    await _vppDtoInsertionAdapter.insert(vvp, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateVVP(VppDto vvp) async {
    await _vppDtoUpdateAdapter.update(vvp, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteVVP(VppDto vvp) async {
    await _vppDtoDeletionAdapter.delete(vvp);
  }
}

class _$CervicalDilationDao extends CervicalDilationDao {
  _$CervicalDilationDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _cervicalDilationDtoInsertionAdapter = InsertionAdapter(
            database,
            'cervical_dilations',
            (CervicalDilationDto item) => <String, Object?>{
                  'idCervicalDilation': item.idCervicalDilation,
                  'partograph_id': item.partographId,
                  'value': item.value,
                  'time': item.time,
                  'ram_or_rem': item.ramOrRem
                }),
        _cervicalDilationDtoUpdateAdapter = UpdateAdapter(
            database,
            'cervical_dilations',
            ['idCervicalDilation'],
            (CervicalDilationDto item) => <String, Object?>{
                  'idCervicalDilation': item.idCervicalDilation,
                  'partograph_id': item.partographId,
                  'value': item.value,
                  'time': item.time,
                  'ram_or_rem': item.ramOrRem
                }),
        _cervicalDilationDtoDeletionAdapter = DeletionAdapter(
            database,
            'cervical_dilations',
            ['idCervicalDilation'],
            (CervicalDilationDto item) => <String, Object?>{
                  'idCervicalDilation': item.idCervicalDilation,
                  'partograph_id': item.partographId,
                  'value': item.value,
                  'time': item.time,
                  'ram_or_rem': item.ramOrRem
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CervicalDilationDto>
      _cervicalDilationDtoInsertionAdapter;

  final UpdateAdapter<CervicalDilationDto> _cervicalDilationDtoUpdateAdapter;

  final DeletionAdapter<CervicalDilationDto>
      _cervicalDilationDtoDeletionAdapter;

  @override
  Future<List<CervicalDilationDto>> findByID(int id) async {
    return _queryAdapter.queryList(
        'SELECT * FROM cervical_dilations WHERE partograph_id = ?1',
        mapper: (Map<String, Object?> row) => CervicalDilationDto(
            idCervicalDilation: row['idCervicalDilation'] as int?,
            partographId: row['partograph_id'] as int,
            value: row['value'] as String,
            time: row['time'] as String,
            ramOrRem: row['ram_or_rem'] as String),
        arguments: [id]);
  }

  @override
  Future<void> insert(CervicalDilationDto cervicalDilation) async {
    await _cervicalDilationDtoInsertionAdapter.insert(
        cervicalDilation, OnConflictStrategy.ignore);
  }

  @override
  Future<void> update(CervicalDilationDto cervicalDilation) async {
    await _cervicalDilationDtoUpdateAdapter.update(
        cervicalDilation, OnConflictStrategy.ignore);
  }

  @override
  Future<void> deleteComponent(CervicalDilationDto cervicalDilation) async {
    await _cervicalDilationDtoDeletionAdapter.delete(cervicalDilation);
  }
}

class _$MedicalSurveillanceDao extends MedicalSurveillanceDao {
  _$MedicalSurveillanceDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _medicalSurveillanceDtoInsertionAdapter = InsertionAdapter(
            database,
            'medical_surveillances',
            (MedicalSurveillanceDto item) => <String, Object?>{
                  'medical_surveillance_id': item.medicalSurveillanceID,
                  'partograph_id': item.partographID,
                  'header': item.header,
                  'time': item.time,
                  'maternal_position': item.maternalPosition,
                  'arterial_pressure': item.arterialPressure,
                  'maternal_pulse': item.maternalPulse,
                  'fetal_heart_rate': item.fetalHeartRate,
                  'frequency_contractions': item.frequencyContractions,
                  'contractions_duration': item.contractionsDuration,
                  'pain_intensity': item.painIntensity,
                  'pain_location': item.painLocation
                }),
        _medicalSurveillanceDtoUpdateAdapter = UpdateAdapter(
            database,
            'medical_surveillances',
            ['medical_surveillance_id'],
            (MedicalSurveillanceDto item) => <String, Object?>{
                  'medical_surveillance_id': item.medicalSurveillanceID,
                  'partograph_id': item.partographID,
                  'header': item.header,
                  'time': item.time,
                  'maternal_position': item.maternalPosition,
                  'arterial_pressure': item.arterialPressure,
                  'maternal_pulse': item.maternalPulse,
                  'fetal_heart_rate': item.fetalHeartRate,
                  'frequency_contractions': item.frequencyContractions,
                  'contractions_duration': item.contractionsDuration,
                  'pain_intensity': item.painIntensity,
                  'pain_location': item.painLocation
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<MedicalSurveillanceDto>
      _medicalSurveillanceDtoInsertionAdapter;

  final UpdateAdapter<MedicalSurveillanceDto>
      _medicalSurveillanceDtoUpdateAdapter;

  @override
  Future<List<MedicalSurveillanceDto>> findMedicalSurveillanceById(
      int medicalSurveillanceID) async {
    return _queryAdapter.queryList(
        'SELECT * FROM medical_surveillances WHERE medical_surveillance_id = ?1',
        mapper: (Map<String, Object?> row) => MedicalSurveillanceDto(medicalSurveillanceID: row['medical_surveillance_id'] as int?, partographID: row['partograph_id'] as int, header: row['header'] as String, time: row['time'] as String, maternalPosition: row['maternal_position'] as String, arterialPressure: row['arterial_pressure'] as String, maternalPulse: row['maternal_pulse'] as String, fetalHeartRate: row['fetal_heart_rate'] as String, frequencyContractions: row['frequency_contractions'] as String, contractionsDuration: row['contractions_duration'] as String, painIntensity: row['pain_intensity'] as String, painLocation: row['pain_location'] as String),
        arguments: [medicalSurveillanceID]);
  }

  @override
  Future<void> deleteMedicalSurveillance(int medicalSurveillanceID) async {
    await _queryAdapter.queryNoReturn(
        'DELETE FROM medical_surveillances WHERE medical_surveillance_id = ?1',
        arguments: [medicalSurveillanceID]);
  }

  @override
  Future<void> insertMedicalSurveillance(
      MedicalSurveillanceDto medicalSurveillance) async {
    await _medicalSurveillanceDtoInsertionAdapter.insert(
        medicalSurveillance, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateMedicalSurveillance(
      MedicalSurveillanceDto medicalSurveillance) async {
    await _medicalSurveillanceDtoUpdateAdapter.update(
        medicalSurveillance, OnConflictStrategy.replace);
  }
}
