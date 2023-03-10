import 'dart:async';

import 'package:flutter/services.dart';

typedef DeepLinkListener = void Function(dynamic value);

mixin DeepLinkMixin {
  static const event = EventChannel('com.nomo.nomo/event');
  static const channel = MethodChannel('com.nomo.nomo/channel');

  Future<void> onDeepLink(String uri);

  Future startListener() async {
    _startAppUri(_onRedirected);
    _broadcastUri(_onRedirected);
  }

  void _onRedirected(dynamic uri) {
    if (uri is String) {
      onDeepLink(uri);
    }
  }

  void _startAppUri(DeepLinkListener listener) async {
    channel.invokeMethod('initialLink').then(listener);
  }

  void _broadcastUri(DeepLinkListener listener) {
    event.receiveBroadcastStream().listen(listener);
  }
}
