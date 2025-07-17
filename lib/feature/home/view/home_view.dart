import 'package:architecture_template/product/init/config/app_enviroment.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/init/product_loacalization.dart';
import 'package:architecture_template/product/navigation/deeplink/app_router.dart';
import 'package:architecture_template/product/utility/constans/enums/locales.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/comman.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

@RoutePage()
final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomNetworkImage(
            imageUrl: 'https://picsum.photos/200/300',
            size: Size(200, 300),
          ),
          Assets.lottie.animZombie.lottie(
            package: 'gen',
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(AppEnvironmentItems.baseUrl.value),
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(HomeDetailRoute(id: '1'));
            },
            child:
                Text(
                  LocaleKeys.general_button_save,
                  style: Theme.of(context).textTheme.labelLarge,
                ).tr(
                  args: ['English'],
                ),
          ),
        ],
      ),
    );
  }
}
