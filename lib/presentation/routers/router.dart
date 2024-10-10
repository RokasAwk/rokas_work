import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../pages/home/home_page.dart';
import '../pages/to_do/to_do_page.dart';

part 'router.gr.dart';

/// generate the router files
/// flutter pub run build_runner build --delete-conflicting-outputs

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          initial: true,
          maintainState: false,
          page: HomeRoute.page,
        ),
        AutoRoute(
          page: ToDoRoute.page,
        ),
      ];
}
