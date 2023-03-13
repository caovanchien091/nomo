import 'package:core/core.dart';
import 'package:nomo/bloc/app_event.dart';
import 'package:nomo/bloc/app_state.dart';
import 'package:nomo/bloc/mixin/await_logged_mixin.dart';
import 'package:nomo/bloc/mixin/deep_link_mixin.dart';

class AppBloc extends Bloc<AppEvent, AppState>
    with DeepLinkMixin, AwaitLoggedMixin {

  AppBloc() : super(InitAppState()) {
    startListener();
    registerAwaitLogged(this);
  }


  void appLaunchEvent() {
    add(AppLaunchEvent());
  }

  @override
  Future<void> onDeepLink(String uri) {
    // TODO: implement onDeepLink
    throw UnimplementedError();
  }
}
