import 'package:core/core.dart';

class DefaultCache extends Cache {
  final _cacheBox = Hive.box(ValueDefault.cacheName);

  @override
  int? readInt(String key) {
    var data = _cacheBox.get(key);
    if (data is int) {
      return data;
    }
  }

  @override
  bool? readBool(String key) {
    var data = _cacheBox.get(key);
    if (data is bool) {
      return data;
    }
  }

  @override
  double? readDouble(String key) {
    var data = _cacheBox.get(key);
    if (data is double) {
      return data;
    }
  }

  @override
  String? readString(String key) {
    var data = _cacheBox.get(key);
    if (data is String) {
      return data;
    }
  }

  @override
  Future<bool> writeInt(String key, int? value) {
    return _writeCache(key, value);
  }

  @override
  Future<bool> writeBool(String key, bool? value) {
    return _writeCache(key, value);
  }

  @override
  Future<bool> writeDouble(String key, double? value) {
    return _writeCache(key, value);
  }

  @override
  Future<bool> writeString(String key, String? value) {
    return _writeCache(key, value);
  }

  @override
  Future<bool> delete(String key) {
    return runCatch(
      onCatch: (error) async => false,
      onRun: () async {
        await _cacheBox.delete(key);
        return true;
      },
    );
  }

  @override
  Future<bool> clear() {
    return runCatch(
      onCatch: (error) async => false,
      onRun: () async {
        await _cacheBox.clear();
        return true;
      },
    );
  }

  Future<bool> _writeCache(String key, dynamic value) {
    return runCatch(
      onCatch: (error) async => false,
      onRun: () async {
        await _cacheBox.put(key, value);
        return true;
      },
    );
  }
}
