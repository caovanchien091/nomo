import 'package:core/core.dart';

class NetworkException extends BaseException {
  const NetworkException([
    int? code,
    dynamic error,
  ]) : super(code, error);
}
