import 'package:core/core.dart';

part 'env_data_dev.dart';

part 'env_data_live.dart';

abstract class _EnvData extends EnvData {
  @override
  String get defaultCurrency => 'vnd';

  @override
  String get defaultLang => 'vi';

  @override
  String get defaultTheme => 'Light';

  @override
  String get defaultTimeFormat => 'dd/MM/yyyy';
}
