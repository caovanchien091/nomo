import 'package:core/core.dart';
import 'package:nomo/bloc/app_bloc.dart';
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
  List providers = [];

  @override
  List<ModuleRegister> moduleRegisters = [
    AppRegister(),
  ];

  @override
  List<ModuleRouter> moduleRouters = [
    AppRouter(),
  ];

  @override
  Widget complete(routes) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (context) => injector.get(),
        ),
      ],
      child: Application(
        routes: routes,
        initRoute: AppRouter.launch,
      ),
    );
  }

  @override
  Route? generateErrorRoute(settings) {
    return MaterialPageRoute(
      builder: (context) => const NotFoundScreen(),
    );
  }
}
