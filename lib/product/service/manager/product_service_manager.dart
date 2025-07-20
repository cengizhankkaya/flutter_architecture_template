import 'dart:io';

import 'package:architecture_template/product/init/config/app_enviroment.dart';
import 'package:flutter/foundation.dart';

import 'package:vexana/vexana.dart';

/// This class is responsible for managing network requests related to products.
final class ProductNetworkManager extends NetworkManager<EmptyModel> {
  ProductNetworkManager.base()
    : super(
        options: BaseOptions(
          baseUrl: AppEnvironmentItems.baseUrl.value,
        ),
      );

  /// ERROR HANDLER
  /// This method listens for error states and executes the provided callback when an error occurs.
  void listenErrorState({required ValueChanged<int> onErrorStatus}) {
    interceptors.add(
      InterceptorsWrapper(
        onError: (e, handler) {
          onErrorStatus(e.response?.statusCode ?? HttpStatus.notFound);
          return handler.next(e);
        },
      ),
    );
  }
}
