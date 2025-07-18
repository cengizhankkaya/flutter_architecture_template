import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final class DialogBase {
  DialogBase._();

  /// Show a general dialog with a custom builder.
  /// This method allows you to create a dialog with any content you want.
  /// The [builder] parameter is a function that returns the widget to be displayed in the dialog.
  /// The dialog will not be dismissible by tapping outside of it, and it will use the safe area of the screen.
  /// The [context] parameter is required to show the
  static Future<T?> show<T>({
    required BuildContext context,
    required WidgetBuilder builder,
  }) async {
    return showDialog<T>(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      builder: builder,
    );
  }
}
