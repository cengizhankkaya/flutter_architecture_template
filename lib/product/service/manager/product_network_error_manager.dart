import 'dart:io';

import 'package:architecture_template/product/navigation/deeplink/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

final class ProductNetworkErrorManager {
  ProductNetworkErrorManager({required this.context});

  final BuildContext context;

  void handleError(int value) {
    if (value == HttpStatus.unauthorized) {}
  }
}
