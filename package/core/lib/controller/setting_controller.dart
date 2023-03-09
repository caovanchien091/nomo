import 'package:core/core.dart';

class _SettingEvent {}

class SettingController extends Cubit<_SettingEvent> {
  final Cache _cache;

  SettingController(
    this._cache,
  ) : super(_SettingEvent());

  void notifier() {
    emit(_SettingEvent());
  }

  Future<void> updateLang(String lang) async {
    await _cache.writeString(CacheKey.lang, lang).then(
          (value) => notifier(),
        );
  }

  Future<void> updateTheme(String theme) async {
    await _cache.writeString(CacheKey.lang, theme).then(
          (value) => notifier(),
        );
  }

  Future<void> updateCurrency(String currency) async {
    await _cache.writeString(CacheKey.lang, currency).then(
          (value) => notifier(),
        );
  }

  Future<void> updateTimeFormat(String timeFormat) async {
    await _cache.writeString(CacheKey.lang, timeFormat).then(
          (value) => notifier(),
        );
  }
}
