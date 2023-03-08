import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:nomo/bootstrap/env/env_data.dart';

class AppBootstrap extends Bootstrap {
  @override
  EnvData envData = DevEnvData();

  @override
  List<BlocProvider> globalProviders = [

  ];

  @override
  List<ModuleRegister> moduleRegisters = [

  ];

  @override
  Future<Widget> complete(BootRoutes routes) {
    throw UnimplementedError();
  }
}
