import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widgets/src/core/dialog_base.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key, required this.title});
  final String title;

  /// Show the dialog for success
  /// This will always return true
  static Future<bool> show({
    required String title,
    required BuildContext context,
  }) async {
    await DialogBase.show<bool>(
      context: context,
      builder: (context) => SuccessDialog(title: title),
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.check))],
    );
  }
}
