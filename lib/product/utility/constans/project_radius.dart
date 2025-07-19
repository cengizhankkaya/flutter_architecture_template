enum ProjectRadius {
  /// Project specific radius values for consistent UI design.
  /// [ProjectRadius.small] is 8
  /// [ProjectRadius.medium] is 16
  /// [ProjectRadius.normal] is 20
  /// [ProjectRadius.large] is 32
  small(8),
  medium(16),
  normal(20),
  large(32);

  final double value;
  const ProjectRadius(this.value);
}
