import 'package:core/core.dart';

class Injector {
  Injector._();

  static final Injector I = Injector._();

  T get<T extends Object>({
    String? instanceName,
    dynamic param1,
    dynamic param2,
  }) {
    return GetIt.I.get<T>(
      instanceName: instanceName,
      param1: param1,
      param2: param2,
    );
  }

  void factory<T extends Object>(
    FactoryFunc<T> factoryFunc, {
    String? instanceName,
  }) {
    if (canRegister<T>(
      instanceName: instanceName,
    )) {
      GetIt.I.registerFactory<T>(
        factoryFunc,
        instanceName: instanceName,
      );
    }
  }

  void singleton<T extends Object>(
    FactoryFunc<T> factoryFunc, {
    String? instanceName,
    bool? signalsReady,
    DisposingFunc<T>? dispose,
  }) {
    if (canRegister<T>(
      instanceName: instanceName,
    )) {
      GetIt.I.registerSingleton<T>(
        factoryFunc(),
        instanceName: instanceName,
        signalsReady: signalsReady,
        dispose: dispose,
      );
    }
  }

  void lazySingleton<T extends Object>(
    FactoryFunc<T> factoryFunc, {
    String? instanceName,
    DisposingFunc<T>? dispose,
  }) {
    if (canRegister<T>(
      instanceName: instanceName,
    )) {
      GetIt.I.registerLazySingleton<T>(
        factoryFunc,
        instanceName: instanceName,
        dispose: dispose,
      );
    }
  }

  Future<T> getAsync<T extends Object>({
    String? instanceName,
    dynamic param1,
    dynamic param2,
  }) {
    return GetIt.I.getAsync<T>(
      instanceName: instanceName,
      param1: param1,
      param2: param2,
    );
  }

  void factoryAsync<T extends Object>(
    FactoryFuncAsync<T> factoryFunc, {
    String? instanceName,
  }) {
    if (canRegister<T>(
      instanceName: instanceName,
    )) {
      GetIt.I.registerFactoryAsync<T>(
        factoryFunc,
        instanceName: instanceName,
      );
    }
  }

  void singletonAsync<T extends Object>(
    FactoryFuncAsync<T> factoryFunc, {
    String? instanceName,
    Iterable<Type>? dependsOn,
    bool? signalsReady,
    DisposingFunc<T>? dispose,
  }) {
    if (canRegister<T>(
      instanceName: instanceName,
    )) {
      GetIt.I.registerSingletonAsync<T>(
        factoryFunc,
        instanceName: instanceName,
        dependsOn: dependsOn,
        signalsReady: signalsReady,
        dispose: dispose,
      );
    }
  }

  void lazySingletonAsync<T extends Object>(
    FactoryFuncAsync<T> factoryFunc, {
    String? instanceName,
    DisposingFunc<T>? dispose,
  }) {
    if (canRegister<T>(
      instanceName: instanceName,
    )) {
      GetIt.I.registerLazySingletonAsync<T>(
        factoryFunc,
        instanceName: instanceName,
        dispose: dispose,
      );
    }
  }

  bool canRegister<T extends Object>({
    Object? instance,
    String? instanceName,
  }) {
    return !GetIt.instance.isRegistered<T>(
      instance: instance,
      instanceName: instanceName,
    );
  }
}
