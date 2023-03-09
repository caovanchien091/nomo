import 'package:core/core.dart';
import 'package:flutter/material.dart';

abstract class ModuleRouter {
  Route? generateRoute(RouteSettings settings, Injector injector);
}
