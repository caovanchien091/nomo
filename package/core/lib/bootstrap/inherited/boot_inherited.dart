import 'package:core/core.dart';
import 'package:flutter/material.dart';

class BootInherited extends InheritedWidget {
  final Env env;
  final List providers;

  const BootInherited({
    Key? key,
    required this.env,
    required this.providers,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(oldWidget) {
    return true;
  }
}
