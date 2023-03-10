import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';

extension ContextExtension on BuildContext {
  BootInherited get _bootInherited {
    return dependOnInheritedWidgetOfExactType()!;
  }

  String get lang {
    return _bootInherited.env.lang;
  }

  String get theme {
    return _bootInherited.env.theme;
  }

  String get currency {
    return _bootInherited.env.currency;
  }

  String get timeFormat {
    return _bootInherited.env.timeFormat;
  }

  List get providers {
    return _bootInherited.providers;
  }

  T? getProvider<T>() {
    for (var provider in providers) {
      if (provider.runtimeType == T) {
        return provider;
      }
    }
  }
}
