// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CostRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CostPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MemoListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MemoListPage(),
      );
    },
    MusicPlayerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MusicPlayerPage(),
      );
    },
    ToDoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ToDoPage(),
      );
    },
    VideoListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VideoListPage(),
      );
    },
  };
}

/// generated route for
/// [CostPage]
class CostRoute extends PageRouteInfo<void> {
  const CostRoute({List<PageRouteInfo>? children})
      : super(
          CostRoute.name,
          initialChildren: children,
        );

  static const String name = 'CostRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
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
/// [MemoListPage]
class MemoListRoute extends PageRouteInfo<void> {
  const MemoListRoute({List<PageRouteInfo>? children})
      : super(
          MemoListRoute.name,
          initialChildren: children,
        );

  static const String name = 'MemoListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MusicPlayerPage]
class MusicPlayerRoute extends PageRouteInfo<void> {
  const MusicPlayerRoute({List<PageRouteInfo>? children})
      : super(
          MusicPlayerRoute.name,
          initialChildren: children,
        );

  static const String name = 'MusicPlayerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ToDoPage]
class ToDoRoute extends PageRouteInfo<void> {
  const ToDoRoute({List<PageRouteInfo>? children})
      : super(
          ToDoRoute.name,
          initialChildren: children,
        );

  static const String name = 'ToDoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VideoListPage]
class VideoListRoute extends PageRouteInfo<void> {
  const VideoListRoute({List<PageRouteInfo>? children})
      : super(
          VideoListRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
