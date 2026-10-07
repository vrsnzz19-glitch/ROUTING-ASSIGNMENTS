import 'package:flutter/material.dart';

import '../pages/detail_page.dart';
import '../pages/main_screen.dart';

class AppRoutes {
  static const String main = '/main';
  static const String details = '/details';

  static Map<String, Widget Function(BuildContext)> get routes => {
    main: (_) => const MainScreen(),
    details: (_) => const DetailPage(),
  };
}
