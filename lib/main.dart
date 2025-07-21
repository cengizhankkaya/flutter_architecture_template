import 'package:architecture_template/product/init/application_initialize.dart';
import 'package:architecture_template/product/init/product_loacalization.dart';
import 'package:architecture_template/product/init/state_initialize.dart';
import 'package:architecture_template/product/init/theme/index.dart';
import 'package:architecture_template/product/navigation/deeplink/app_router.dart';
import 'package:architecture_template/product/state/view_model/product_view_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets/index.dart';

Future<void> main() async {
  await ApplicationInitialize().make();

  runApp(ProductLocalization(child: const StateInitialize(child: _MyApp())));
}

class _MyApp extends StatelessWidget {
  const _MyApp();
  static final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    context.watch<ProductViewModel>();
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      builder: CustomResponsive.build,
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      themeMode: context.watch<ProductViewModel>().state.themeMode,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
