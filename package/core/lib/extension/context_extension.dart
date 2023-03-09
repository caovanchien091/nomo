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
}
