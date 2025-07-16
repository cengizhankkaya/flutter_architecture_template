import 'dart:async';

import 'package:architecture_template/product/init/config/app_enviroment.dart';
import 'package:architecture_template/product/init/config/dev_env.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/web.dart';

@immutable
/// This class is responsible for initializing the application.
final class ApplicationInitialize {
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();
    await runZonedGuarded<Future<void>>(
      _initialize,
      (error, stackTrace) {
        ///  Todo: add custom logger
        Logger().e(error.toString());
      },
    );
  }

  /// Initializes the application.
  static Future<void> _initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [
      LevelMessages.error,
      LevelMessages.warning,
    ];
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    // Additional initialization logic can be added here.
    await DeviceUtility.instance.initPackageInfo();

    FlutterError.onError = (errorDetails) {
      /// crashlytics log insert here
      /// custom service pr custom logger insert here
      ///  Todo: add custom logger
      Logger().e(errorDetails.exceptionAsString());
    };

    AppEnvironment.general();
  }
}
