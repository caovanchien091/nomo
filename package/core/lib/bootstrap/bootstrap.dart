import 'package:core/core.dart';
import 'package:flutter/material.dart';

typedef BootEngine = void Function(Widget);
typedef BootRoutes = Route? Function(RouteSettings);

abstract class Bootstrap {
  abstract EnvData envData;
  abstract List<BlocProvider> globalProviders;
  abstract List<ModuleRegister> moduleRegisters;

  Injector get injector => Injector.I;

  Future<Widget> complete(BootRoutes routes);

  Future<void> boot(BootEngine engine) async {
    await _register();

    for (var module in moduleRegisters) {
      await module.dependency(injector);
    }

    engine(
      MultiBlocProvider(
        providers: globalProviders,
        child: await complete(
          (settings) {
            for (var module in moduleRegisters) {
              var route = module.generateRoute(
                settings,
                injector,
              );

              if (route != null) {
                return route;
              }
            }
          },
        ),
      ),
    );
  }

  Future<void> _register() async {
    // Init Hive cache
    await Hive.initFlutter().then(
      (value) => Hive.openBox(ValueDefault.cacheName).then(
        (value) => injector.factory<Cache>(
          () => DefaultCache(),
        ),
      ),
    );

    // Init Env data
    injector.singleton(
      () => Env(
        envData,
        injector.get(),
      ),
    );
  }
}
