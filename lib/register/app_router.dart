import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:nomo/screen/launch/launch_screen.dart';

class AppRouter extends ModuleRouter {
  static const String launch = '/launch';

  @override
  Route? generateRoute(settings, injector) {
    switch (settings.name) {
      case launch:
        return _buildLaunch(settings, injector);
    }
  }

  Route _buildLaunch(RouteSettings settings, Injector injector) {
    return MaterialPageRoute(
      builder: (context) => const LaunchScreen(),
    );
  }
}
