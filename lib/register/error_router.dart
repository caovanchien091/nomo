import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:nomo/screen/error/not_found_screen.dart';

class ErrorRouter extends ModuleRouter {
  static const String notFound = '/not-found';

  @override
  Route? generateRoute(settings, injector) {
    switch (settings.name) {
      case notFound:
      default:
        return _buildNotFound(settings, injector);
    }
  }

  Route _buildNotFound(RouteSettings settings, Injector injector) {
    return MaterialPageRoute(
      builder: (context) => const NotFoundScreen(),
    );
  }
}
