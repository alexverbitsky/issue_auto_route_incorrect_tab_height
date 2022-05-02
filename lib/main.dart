import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'router.gr.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      lazyLoad: false,
      routes: const [
        Tab1Route(),
        Tab2Route(),
      ],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        child: const Text('Tab1'),
                        onTap: () {
                          tabsRouter.setActiveIndex(0);
                        },
                      ),
                      GestureDetector(
                        child: const Text('Tab2'),
                        onTap: () {
                          tabsRouter.setActiveIndex(1);
                        },
                      )
                    ],
                  ),
                  child,
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Tab1 extends StatelessWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 200, color: Colors.red),
        Container(height: 200, color: Colors.grey),
        Container(height: 200, color: Colors.red),
        Container(height: 200, color: Colors.grey),
        Container(height: 200, color: Colors.red),
        Container(height: 200, color: Colors.grey),
      ],
    );
  }
}

class Tab2 extends StatelessWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 500, color: Colors.blue);
  }
}
