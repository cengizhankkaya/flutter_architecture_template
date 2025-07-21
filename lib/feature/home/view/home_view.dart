import 'package:architecture_template/product/init/config/app_enviroment.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/navigation/deeplink/app_router.dart';
import 'package:architecture_template/product/service/login_service.dart';
import 'package:architecture_template/product/service/manager/product_service_manager.dart';
import 'package:architecture_template/product/widget/padding/project_padding.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/comman.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';
import 'package:widgets/index.dart';

@RoutePage()
final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<User> _users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          SuccessDialog.show(title: 'title', context: context);
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: ProjectPadding.allNormal(),
            child: AdaptAllView(
              phone: Text(''.ext.version),
              tablet: Text(''.ext.version),
              desktop: Text(''.ext.version),
            ),
          ),
          Image.network(''.ext.randomImage),
          FloatingActionButton(
            onPressed: () async {
              final loginService = LoginService(ProductNetworkManager.base());
              _users = await loginService.users();
              setState(() {});
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _users.length,
              itemBuilder: (context, index) {
                final user = _users[index];
                return ListTile(
                  title: Text(user.userId.toString()),
                  subtitle: Text(_users[index].body.toString()),
                );
              },
            ),
          ),
          Text(
            'cengizhan',
            style: context.general.textTheme.titleLarge?.copyWith(
              color: Colors.red,
            ),
          ),
          Text(''.ext.version),
          const CustomNetworkImage(
            imageUrl: 'https://picsum.photos/200/300',
            size: Size(100, 100),
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

void calcuateUser(List<String?> items) {}

// class User {
//   User({required this.name, required this.money});

//   final String? name;
//   final double? money;
// }
