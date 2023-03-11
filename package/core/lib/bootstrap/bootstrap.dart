import 'package:core/core.dart';
import 'package:flutter/material.dart';

typedef BootEngine = void Function(Widget);
typedef BootRoutes = Route? Function(RouteSettings);

abstract class Bootstrap {
  abstract EnvData envData;
  abstract List providers;
  abstract ModuleRouter errorRoute;
  abstract List<ModuleRegister> moduleRegisters;
  abstract List<ModuleRouter> moduleRouters;

  Injector get injector => Injector.I;

  Widget complete(BootRoutes routes);

  Future<void> boot(BootEngine engine) async {
    await _register();

    for (var module in moduleRegisters) {
      await module.dependency(injector);
    }

    engine(
      BootInherited(
        env: injector.get(),
        providers: providers,
        child: complete(
          (settings) {
            for (var module in moduleRouters) {
              var route = module.generateRoute(
                settings,
                injector,
              );

              if (route != null) {
                return route;
              }
            }

            return errorRoute.generateRoute(
              settings,
              injector,
            );
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
    injector.singleton<Env>(
      () => Env(
        envData,
        injector.get(),
      ),
    );
  }
}
