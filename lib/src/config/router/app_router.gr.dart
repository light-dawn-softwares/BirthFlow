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
    ChartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChartScreen(),
      );
    },
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
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PartographRouteArgs>(
          orElse: () => PartographRouteArgs(
              partographId: pathParams.getInt('partographId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PartographScreen(
          key: args.key,
          partographId: args.partographId,
        ),
      );
    },
  };
}

/// generated route for
/// [ChartScreen]
class ChartRoute extends PageRouteInfo<void> {
  const ChartRoute({List<PageRouteInfo>? children})
      : super(
          ChartRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
class PartographRoute extends PageRouteInfo<PartographRouteArgs> {
  PartographRoute({
    Key? key,
    required int partographId,
    List<PageRouteInfo>? children,
  }) : super(
          PartographRoute.name,
          args: PartographRouteArgs(
            key: key,
            partographId: partographId,
          ),
          rawPathParams: {'partographId': partographId},
          initialChildren: children,
        );

  static const String name = 'PartographRoute';

  static const PageInfo<PartographRouteArgs> page =
      PageInfo<PartographRouteArgs>(name);
}

class PartographRouteArgs {
  const PartographRouteArgs({
    this.key,
    required this.partographId,
  });

  final Key? key;

  final int partographId;

  @override
  String toString() {
    return 'PartographRouteArgs{key: $key, partographId: $partographId}';
  }
}
