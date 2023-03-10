import 'package:core/core.dart';
import 'package:nomo/bloc/app_event.dart';
import 'package:nomo/bloc/app_state.dart';
import 'package:nomo/bloc/mixin/await_logged_mixin.dart';
import 'package:nomo/bloc/mixin/deep_link_mixin.dart';
import 'package:nomo/bloc/mixin/navigator_mixin.dart';

class AppBloc extends Bloc<AppEvent, AppState>
    with DeepLinkMixin, AwaitLoggedMixin, NavigatorMixin {

  AppBloc() : super(InitAppState()) {
    startListener();
    registerAwaitLogged(this);

    on<AppLaunchEvent>(_appLaunchEvent);
  }

  Future<void> _appLaunchEvent(AppLaunchEvent event, Emitter emit) async {
    homeRedirect();
  }

  @override
  Future<void> onDeepLink(String uri) async {
    deepLinkRedirect(
      Uri.parse(uri),
    );
  }

  Future<bool> _checkAuth() async {
    return true;
  }

  void appLaunchEvent() {
    add(AppLaunchEvent());
  }
}
