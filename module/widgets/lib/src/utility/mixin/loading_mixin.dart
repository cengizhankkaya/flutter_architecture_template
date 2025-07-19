import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

/// A mixin to manage loading state in a [StatefulWidget].
/// It provides a [ValueNotifier] to track the loading state and a method
/// to change the loading state.
mixin LoadingMixin<T extends StatefulWidget> on State<T> {
  /// manager your mounted state
  void safeOperation(AsyncCallback callback) {
    if (!mounted) return;
    callback.call();
  }
}
