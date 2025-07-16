import 'package:architecture_template/product/init/config/app_configuration_interface.dart';
import 'package:architecture_template/product/init/config/dev_env.dart';
import 'package:architecture_template/product/init/config/prod_env.dart';
import 'package:flutter/foundation.dart';

///Application environment manager class
final class AppEnvironment {
  ///Setup application environment with configuration
  AppEnvironment.setup({required AppConfiguration config}) {
    _config = config;
  }

  ///General application environment
  AppEnvironment.general() {
    _config = !kDebugMode ? DevEnv() : ProdEnv();
  }

  static late AppConfiguration _config;
}

/// Get application environment items
enum AppEnvironmentItems {
  ///Network base url
  baseUrl,

  ///Google Maps API key
  apiKey;

  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._config.baseUrl;
        case AppEnvironmentItems.apiKey:
          return AppEnvironment._config.apiKey;
      }
    } catch (e) {
      throw Exception('AppEnvironment not initialized.');
    }
  }
}
