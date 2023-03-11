import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:nomo/bloc/mixin/await_logged_mixin.dart';
import 'package:nomo/register/app_router.dart';

typedef AwaitComplete = Future<bool> Function();

mixin NavigatorMixin implements AwaitLoggedMixin {
  BuildContext get currentContext => NavigatorService.currentContext;

  Future<void> deepLinkRedirect(Uri uri) async {
    Navigator.of(currentContext).pushNamedAndRemoveUntil(
      uri.path,
      (route) => false,
      arguments: uri,
    );
  }

  Future<void> signInRedirect() async {}

  Future<void> homeRedirect() async {}

  Future<void> launchRedirect() async {
    Navigator.of(currentContext).pushNamedAndRemoveUntil(
      AppRouter.launch,
      (route) => false,
    );
  }
}
