import 'package:architecture_template/product/init/config/app_configuration_interface.dart';
import 'package:envied/envied.dart';

part 'dev_env.g.dart';

@Envied(path: 'asset/env/.dev.env', obfuscate: true)
final class DevEnv implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _DevEnv._baseUrl;

  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _DevEnv._apiKey;

  @override
  String get baseUrl => _baseUrl;

  @override
  String get apiKey => _apiKey;
}
