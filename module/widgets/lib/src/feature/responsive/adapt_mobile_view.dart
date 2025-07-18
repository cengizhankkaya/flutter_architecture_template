import 'package:flutter/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class AdaptphoneView extends StatelessWidget {
  /// Creates a widget that adapts to different screen sizes.
  /// It displays different widgets based on the current screen size.
  /// [phone] is shown for phone screens,
  /// [tablet] for tablet screens, and [desktop] for desktop screens.
  /// If the screen size does not match any of these, [phone] is shown by default.

  const AdaptphoneView({
    super.key,
    required this.tablet,
    required this.phone,
  });

  /// Define your custom phone and tablet widgets
  final Widget phone;
  final Widget tablet;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isPhone) return phone;
    if (ResponsiveBreakpoints.of(context).isTablet) return tablet;

    return tablet;
  }
}
