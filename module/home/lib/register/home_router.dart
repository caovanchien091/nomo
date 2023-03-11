import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../screen/home/home_screen.dart';

class HomeRouter extends ModuleRouter {
  static const String home = '/home';

  @override
  Route? generateRoute(settings, injector) {
    switch (settings.name) {
      case home:
        return _buildHome(settings, injector);
    }
  }

  Route _buildHome(RouteSettings settings, Injector injector) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
