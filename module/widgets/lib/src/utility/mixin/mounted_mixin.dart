import 'package:flutter/widgets.dart';

/// A mixin to manage loading state in a [StatefulWidget].
/// It provides a [ValueNotifier] to track the loading state and a method
/// to change the loading state.
mixin MountedMixin<T extends StatefulWidget> on State<T> {
  Future<void> safeOperation(VoidCallback callback) async {
    if (!mounted) return;
    callback.call();
  }
}
