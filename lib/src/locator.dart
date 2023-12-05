import 'package:birthflow/src/config/database/database.dart';
import 'package:birthflow/src/core/general/data/repository/repository_imp.dart';
import 'package:birthflow/src/core/general/domain/repository/repository.dart';
import 'package:birthflow/src/core/general/domain/usecases/create_usecase.dart';
import 'package:birthflow/src/core/general/domain/usecases/create_usecase_imp.dart';
import 'package:birthflow/src/core/general/domain/usecases/get_usecase.dart';
import 'package:birthflow/src/core/general/domain/usecases/get_usecase_imp.dart';
import 'package:birthflow/src/core/work_time/data/repository/repository_imp.dart';
import 'package:birthflow/src/core/work_time/domain/repository/repository.dart';
import 'package:birthflow/src/core/work_time/domain/usecases/create_usecase.dart';
import 'package:birthflow/src/core/work_time/domain/usecases/create_usecase_imp.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> initializeDependencies() async {
  final db = await $FloorAppDatabase.databaseBuilder('birthflow_dev').build();
  locator.registerSingleton<AppDatabase>(db);

  locator.registerLazySingleton<GeneralRepository>(
    () => GeneralRepositoryImplementation(generalDao: db.generalDao),
  );

  locator.registerLazySingleton<WorkTimeRepository>(
    () => WorkTimeRepositoryImplementation(datasources: db.workTimeDao),
  );

  // Use Cases
  locator.registerLazySingleton<GeneralCreateUseCase>(
    () => GeneralCreateUseCaseImplementation(locator<GeneralRepository>()),
  );

  locator.registerLazySingleton<GeneralGetUseCase>(
    () => GeneralGetUseCaseImplementation(locator<GeneralRepository>()),
  );

  locator.registerLazySingleton<WorkTimeCreateUseCase>(
    () => WorkTimeCreateUseCaseImplementation(locator<WorkTimeRepository>()),
  );
}
