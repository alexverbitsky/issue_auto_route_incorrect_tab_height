// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import 'main.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    DashboardScreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DashboardScreen());
    },
    Tab1Route.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Tab1());
    },
    Tab2Route.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Tab2());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(DashboardScreen.name, path: '/', children: [
          _i2.RouteConfig(Tab1Route.name,
              path: '', parent: DashboardScreen.name),
          _i2.RouteConfig(Tab2Route.name,
              path: 'Tab2', parent: DashboardScreen.name)
        ])
      ];
}

/// generated route for
/// [_i1.DashboardScreen]
class DashboardScreen extends _i2.PageRouteInfo<void> {
  const DashboardScreen({List<_i2.PageRouteInfo>? children})
      : super(DashboardScreen.name, path: '/', initialChildren: children);

  static const String name = 'DashboardScreen';
}

/// generated route for
/// [_i1.Tab1]
class Tab1Route extends _i2.PageRouteInfo<void> {
  const Tab1Route() : super(Tab1Route.name, path: '');

  static const String name = 'Tab1Route';
}

/// generated route for
/// [_i1.Tab2]
class Tab2Route extends _i2.PageRouteInfo<void> {
  const Tab2Route() : super(Tab2Route.name, path: 'Tab2');

  static const String name = 'Tab2Route';
}
