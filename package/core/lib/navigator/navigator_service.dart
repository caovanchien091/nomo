import 'package:flutter/material.dart';

class NavigatorService {
  NavigatorService._();

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static BuildContext get currentContext {
    return navigatorKey.currentState!.context;
  }
}
