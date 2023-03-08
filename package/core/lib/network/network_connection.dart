import 'dart:io';

import 'package:core/core.dart';

class NetworkConnection {
  NetworkConnection._();

  static Future<bool> call() async {
    try {
      return await InternetAddress.lookup(ValueDefault.urlTestConnect).then(
        (value) => value[0].rawAddress.isNotEmpty,
      );
    } catch (_) {
      return false;
    }
  }
}
