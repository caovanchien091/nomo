import 'dart:async';

import 'package:nomo/bloc/app_bloc.dart';
import 'package:nomo/bloc/app_state.dart';

mixin AwaitLoggedMixin {
  Completer<bool> _completer = Completer();

  Future<bool> awaitComplete() async {
    return _completer.future;
  }

  void createNewAwait() {
    if (_completer.isCompleted == false) {
      _completer.complete(false);
    }
    _completer = Completer();
  }

  void registerAwaitLogged(AppBloc appBloc) {
    appBloc.stream.listen((event) {
      if (_completer.isCompleted) {
        return;
      }

      if (appBloc.state is AppLoggedState) {
        _completer.complete(true);
      }
    });
  }
}
