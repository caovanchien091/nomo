import 'package:core/core.dart';

class AuthException extends BaseException {
  const AuthException([
    int? code,
    dynamic error,
  ]) : super(code, error);
}
