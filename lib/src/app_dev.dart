import 'package:birthflow/src/config/router/app_router.dart';

import 'package:birthflow/src/core/general/domain/usecases/get_usecase.dart';
import 'package:birthflow/src/locator.dart';
import 'package:birthflow/src/presentation/home/bloc/bloc.dart';
import 'package:birthflow/src/presentation/home/bloc/state/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDev extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GeneralBloc>(
          create: (context) => GeneralBloc(
            locator<GeneralGetUseCase>(),
          )..add(const GeneralEvent.fetchGeneralData()),
        ),
      ],
      child: MaterialApp.router(
        title: 'Birth Flow v1',
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
