import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:nomo/screen/home/home_screen.dart';
import 'package:nomo/screen/launch/launch_screen.dart';

class AppRouter extends ModuleRouter {
  static const String launch = '/launch';
  static const String home = '/home';

  @override
  Route? generateRoute(settings, injector) {
    switch (settings.name) {
      case launch:
        return _buildLaunch(settings, injector);
      case home:
        return _buildHome(settings, injector);
    }
  }

  Route _buildLaunch(RouteSettings settings, Injector injector) {
    return MaterialPageRoute(
      builder: (context) => const LaunchScreen(),
    );
  }

  Route _buildHome(RouteSettings settings, Injector injector) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
