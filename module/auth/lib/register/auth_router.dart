import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../screen/sign_in/sing_in_screen.dart';
import '../screen/sign_up/sign_up_screen.dart';

class AuthRouter extends ModuleRouter {
  static const String signIn = '/sing-in';
  static const String signUp = '/sing-up';

  @override
  Route? generateRoute(settings, injector) {
    switch (settings.name) {
      case signIn:
        return _buildSignIn(settings, injector);
      case signUp:
        return _buildSignUp(settings, injector);
    }
  }

  Route _buildSignIn(RouteSettings settings, Injector injector) {
    return MaterialPageRoute(
      builder: (context) => const SignInScreen(),
    );
  }

  Route _buildSignUp(RouteSettings settings, Injector injector) {
    return MaterialPageRoute(
      builder: (context) => const SignUpScreen(),
    );
  }
}
