import 'package:auto_route/auto_route.dart';
import 'package:birthflow/src/presentation/configuration/views/configuration_screen.dart';
import 'package:birthflow/src/presentation/home/views/home_screen.dart';
import 'package:birthflow/src/presentation/new_partograph/views/new_partograph_screen.dart';
import 'package:birthflow/src/presentation/partograph/views/chart_screen.dart';
import 'package:birthflow/src/presentation/partograph/views/partograph_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(page: NewPartographRoute.page),
        AutoRoute(page: PartographRoute.page),
        AutoRoute(page: ConfigurationRoute.page),
        AutoRoute(page: ChartRoute.page),
      ];
}
