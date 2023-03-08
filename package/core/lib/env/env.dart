import 'package:core/core.dart';

class Env {
  final Cache _cache;
  final EnvData _envData;

  const Env(this._envData, this._cache);

  bool get isLogger => _envData.isLogger;

  bool get isCheckNetwork => _envData.isCheckNetwork;

  String get lang {
    return _cache.readString(CacheKey.lang) ?? _envData.defaultLang;
  }

  String get theme {
    return _cache.readString(CacheKey.theme) ?? _envData.defaultTheme;
  }

  String get currency {
    return _cache.readString(CacheKey.currency) ?? _envData.defaultCurrency;
  }

  String get timeFormat {
    return _cache.readString(CacheKey.timeFormat) ?? _envData.defaultTimeFormat;
  }
}
