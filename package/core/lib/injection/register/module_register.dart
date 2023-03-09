import 'package:core/core.dart';

abstract class ModuleRegister {
  Future<void> dependency(Injector injector);
}
