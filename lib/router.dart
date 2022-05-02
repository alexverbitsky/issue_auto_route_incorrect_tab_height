import 'package:auto_route/auto_route.dart';

import 'main.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: DashboardScreen,
      initial: true,
      children: [
        AutoRoute(
          page: Tab1,
          name: 'Tab1Route',
          initial: true,
        ),
        AutoRoute(
          page: Tab2,
          name: 'Tab2Route',
        ),
      ],
    ),
  ],
)
class $AppRouter {}
