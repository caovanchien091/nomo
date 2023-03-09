import 'package:core/core.dart';
import 'package:nomo/register/app_router.dart';
import 'package:nomo/screen/error/not_found_screen.dart';
import 'package:widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:nomo/bootstrap/env/env_data.dart';
import 'package:nomo/register/app_register.dart';

class AppBootstrap extends Bootstrap {
  @override
  EnvData envData = DevEnvData();

  @override
  List<BlocProvider> globalProviders = [];

  @override
  List<ModuleRegister> moduleRegisters = [
    AppRegister(),
  ];

  @override
  List<ModuleRouter> moduleRouters = [];

  @override
  Widget complete(routes) {
    return Application(
      routes: routes,
      controller: injector.get(),
      initRoute: AppRouter.launch,
    );
  }

  @override
  Route? generateErrorRoute(settings) {
    return MaterialPageRoute(
      builder: (context) => const NotFoundScreen(),
    );
  }
}
