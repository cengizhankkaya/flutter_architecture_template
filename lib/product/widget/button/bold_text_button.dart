import 'package:flutter/material.dart';

/// BoldTextButton is elevation 20
final class BoldTextButton extends TextButton {
  BoldTextButton({
    super.key,
    required super.onPressed,
    required super.child,
  }) : super(
         style: TextButton.styleFrom(
           elevation: 20,
         ),
       );
}
