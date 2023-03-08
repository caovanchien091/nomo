abstract class Cache {
  int? readInt(String key);

  bool? readBool(String key);

  double? readDouble(String key);

  String? readString(String key);

  Future<bool> writeInt(String key, int? value);

  Future<bool> writeBool(String key, bool? value);

  Future<bool> writeDouble(String key, double? value);

  Future<bool> writeString(String key, String? value);

  Future<bool> delete(String key);

  Future<bool> clear();
}
