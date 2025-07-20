import 'package:architecture_template/product/init/application_initialize.dart';
import 'package:architecture_template/product/init/product_loacalization.dart';
import 'package:architecture_template/product/init/theme/index.dart';
import 'package:architecture_template/product/navigation/deeplink/app_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:widgets/index.dart';

Future<void> main() async {
  await ApplicationInitialize().make();

  runApp(ProductLocalization(child: const _MyApp()));
}

class _MyApp extends StatelessWidget {
  const _MyApp();
  static final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      builder: CustomResponsive.build,
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
