import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:architecture_template/product/navigation/deeplink/app_router.dart';
import 'package:architecture_template/product/service/manager/product_network_error_manager.dart';
import 'package:architecture_template/product/service/manager/product_service_manager.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

mixin HomeViewMixin on State<HomeView> {
  late final ProductNetworkManager productNetworkManager;
  late final ProductNetworkErrorManager productNetworkErrorManager;

  @override
  void initState() {
    super.initState();
    productNetworkManager = ProductNetworkManager.base();
    productNetworkErrorManager = ProductNetworkErrorManager(context: context);

    productNetworkManager.listenErrorState(
      onErrorStatus: (value) {
        if (value == 401) {
          context.router.push(const HomeRoute());
        }
      },
    );
  }
}
