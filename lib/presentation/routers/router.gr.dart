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
    AddMemoRoute.name: (routeData) {
      final args = routeData.argsAs<AddMemoRouteArgs>(
          orElse: () => const AddMemoRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddMemoPage(
          key: args.key,
          existedMemo: args.existedMemo,
        ),
      );
    },
    CostListChartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CostListChartPage(),
      );
    },
    CostListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CostListPage(),
      );
    },
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
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
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
    OneATwoBRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OneATwoBPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    RamenMapRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RamenMapPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingPage(),
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
    WeatherRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WeatherPage(),
      );
    },
  };
}

/// generated route for
/// [AddMemoPage]
class AddMemoRoute extends PageRouteInfo<AddMemoRouteArgs> {
  AddMemoRoute({
    Key? key,
    Memo? existedMemo,
    List<PageRouteInfo>? children,
  }) : super(
          AddMemoRoute.name,
          args: AddMemoRouteArgs(
            key: key,
            existedMemo: existedMemo,
          ),
          initialChildren: children,
        );

  static const String name = 'AddMemoRoute';

  static const PageInfo<AddMemoRouteArgs> page =
      PageInfo<AddMemoRouteArgs>(name);
}

class AddMemoRouteArgs {
  const AddMemoRouteArgs({
    this.key,
    this.existedMemo,
  });

  final Key? key;

  final Memo? existedMemo;

  @override
  String toString() {
    return 'AddMemoRouteArgs{key: $key, existedMemo: $existedMemo}';
  }
}

/// generated route for
/// [CostListChartPage]
class CostListChartRoute extends PageRouteInfo<void> {
  const CostListChartRoute({List<PageRouteInfo>? children})
      : super(
          CostListChartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CostListChartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CostListPage]
class CostListRoute extends PageRouteInfo<void> {
  const CostListRoute({List<PageRouteInfo>? children})
      : super(
          CostListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CostListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

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
/// [OneATwoBPage]
class OneATwoBRoute extends PageRouteInfo<void> {
  const OneATwoBRoute({List<PageRouteInfo>? children})
      : super(
          OneATwoBRoute.name,
          initialChildren: children,
        );

  static const String name = 'OneATwoBRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RamenMapPage]
class RamenMapRoute extends PageRouteInfo<void> {
  const RamenMapRoute({List<PageRouteInfo>? children})
      : super(
          RamenMapRoute.name,
          initialChildren: children,
        );

  static const String name = 'RamenMapRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingPage]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute({List<PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

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

/// generated route for
/// [WeatherPage]
class WeatherRoute extends PageRouteInfo<void> {
  const WeatherRoute({List<PageRouteInfo>? children})
      : super(
          WeatherRoute.name,
          initialChildren: children,
        );

  static const String name = 'WeatherRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
