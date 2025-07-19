import 'package:architecture_template/product/utility/constans/project_radius.dart';
import 'package:flutter/material.dart';

/// Radius is 20
final class NormalButton extends StatelessWidget {
  const NormalButton({super.key, required this.title, this.onPressed});

  /// title text
  final String title;

  /// onPressed callback
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: ProjectRadius.normal.value,
      child: Text(title),
      onTap: onPressed,
    );
  }
}
