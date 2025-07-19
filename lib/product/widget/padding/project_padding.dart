import 'package:flutter/widgets.dart';

/// ProjectPadding is a custom padding class that provides predefined padding values
final class ProjectPadding extends EdgeInsets {
  const ProjectPadding._() : super.all(0);

  /// All padding
  /// [ProjectPadding.allSmall] is 8
  ProjectPadding.allSmall() : super.all(8);

  /// [ProjectPadding.allMedium] is 16
  ProjectPadding.allMedium() : super.all(16);

  /// [ProjectPadding.allNormal] is 20
  ProjectPadding.allNormal() : super.all(20);

  /// [ProjectPadding.allLarge] is 32
  ProjectPadding.allLarge() : super.all(32);

  /// Symetric
  /// Only Left,right,bottom
}
