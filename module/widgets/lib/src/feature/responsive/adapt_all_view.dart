import 'package:flutter/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AdaptAllView extends StatelessWidget {
  /// Creates a widget that adapts to different screen sizes.
  /// It displays different widgets based on the current screen size.
  /// [phone] is shown for phone screens,
  /// [tablet] for tablet screens, and [desktop] for desktop screens.
  /// If the screen size does not match any of these, [phone] is shown by default.

  const AdaptAllView({
    Key? key,
    required this.phone,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  /// Define your custom phone, tablet and desktop widgets
  final Widget phone;
  final Widget tablet;
  final Widget desktop;
  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isPhone) return phone;
    if (ResponsiveBreakpoints.of(context).isTablet) return tablet;
    if (ResponsiveBreakpoints.of(context).isDesktop) return desktop;

    return desktop;
  }
}
