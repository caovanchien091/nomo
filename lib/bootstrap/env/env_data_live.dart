part of 'env_data.dart';

class LiveEnvData extends _EnvData {
  @override
  bool get isCheckNetwork => true;

  @override
  bool get isLogger => false;
}
