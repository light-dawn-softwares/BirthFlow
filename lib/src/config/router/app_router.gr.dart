// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ConfigurationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ConfigurationScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeScreen(),
      );
    },
    NewPartographRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewPartographScreen(),
      );
    },
    PartographRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PartographScreen(),
      );
    },
  };
}

/// generated route for
/// [ConfigurationScreen]
class ConfigurationRoute extends PageRouteInfo<void> {
  const ConfigurationRoute({List<PageRouteInfo>? children})
      : super(
          ConfigurationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConfigurationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewPartographScreen]
class NewPartographRoute extends PageRouteInfo<void> {
  const NewPartographRoute({List<PageRouteInfo>? children})
      : super(
          NewPartographRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewPartographRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PartographScreen]
class PartographRoute extends PageRouteInfo<void> {
  const PartographRoute({List<PageRouteInfo>? children})
      : super(
          PartographRoute.name,
          initialChildren: children,
        );

  static const String name = 'PartographRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
