import 'package:core/core.dart';
import 'package:flutter/material.dart';

abstract class ModuleRegister {
  Future<void> dependency(Injector injector);

  Route? generateRoute(RouteSettings settings, Injector injector);
}
