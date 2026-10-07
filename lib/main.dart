import 'package:flutter/material.dart';

import 'routes/app_routes.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routing App',
      initialRoute: AppRoutes.main,
      routes: AppRoutes.routes,
    );
  }
}
