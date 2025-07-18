import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widgets/src/core/dialog_base.dart';

final class QuestionAnswer {
  final String response;

  QuestionAnswer({required this.response});
}

class QuestionDialog extends StatefulWidget {
  const QuestionDialog({super.key, required this.title});
  final String title;

  /// Show the dialog for success
  /// This will always return true
  static Future<QuestionAnswer?> show({
    required String title,
    required BuildContext context,
  }) async {
    return DialogBase.show<QuestionAnswer>(
      context: context,
      builder: (context) => QuestionDialog(title: title),
    );
  }

  @override
  State<QuestionDialog> createState() => _QuestionDialogState();
}

class _QuestionDialogState extends State<QuestionDialog> {
  String _response = '';
  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(widget.title),
      content: TextField(
        onChanged: (value) => _response = value,
      ),
      actions: [
        IconButton(
          onPressed: () {
            if (_response.isEmpty) {
              Navigator.of(context).pop(QuestionAnswer(response: _response));
            }
          },
          icon: const Icon(Icons.check),
        ),
      ],
    );
  }
}
