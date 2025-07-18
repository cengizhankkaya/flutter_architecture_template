import 'package:flutter/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Custom resposive for project
/// [mobile] 0 - 400
/// [tablet] 401 - 800
/// [desktop] 801 - 1200
/// [4k] 1201 - infinity

final class CustomResponsive {
  /// Make to  ui responsive
  static Widget build(BuildContext context, Widget? child) {
    return ResponsiveBreakpoints.builder(
      child: child!,
      breakpoints: [
        const Breakpoint(start: 0, end: 400, name: MOBILE),
        const Breakpoint(start: 401, end: 800, name: TABLET),
        const Breakpoint(start: 801, end: 1200, name: DESKTOP),
        const Breakpoint(start: 1201, end: double.infinity, name: '4k'),
      ],
    );
  }
}
