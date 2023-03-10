import 'package:core/core.dart';
import 'package:nomo/bloc/app_bloc.dart';

class AppRegister extends ModuleRegister {
  @override
  Future<void> dependency(Injector injector) async {
    injector.singleton<AppBloc>(() => AppBloc());
  }
}
