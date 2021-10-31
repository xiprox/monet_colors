import 'package:flutter/material.dart';

class MonetColor extends ColorSwatch<int> {
  final Map<int, Color> colors;

  MonetColor._(this.colors)
      : assert(colors.length == 13),
        super(colors[500]!.value, colors);

  /// White.
  Color get shade0 => this[0]!;

  /// The lightest shade.
  Color get shade10 => this[10]!;

  /// The second lightest shade.
  Color get shade50 => this[50]!;

  /// The third lightest shade.
  Color get shade100 => this[100]!;

  /// The fouth lightest shade.
  Color get shade200 => this[200]!;

  /// The fifth lightest shade.
  Color get shade300 => this[300]!;

  /// The sixth lightest shade.
  Color get shade400 => this[400]!;

  /// The default shade.
  Color get shade500 => this[500]!;

  /// The fourth darkest shade.
  Color get shade600 => this[600]!;

  /// The third darkest shade.
  Color get shade700 => this[700]!;

  /// The second darkest shade.
  Color get shade800 => this[800]!;

  /// The darkest shade.
  Color get shade900 => this[900]!;

  /// Black.
  Color get shade1000 => this[1000]!;
}

class MonetColors {
  /// The primary accent color.
  final MonetColor primary;

  /// The secondary accent color.
  final MonetColor secondary;

  /// The tertiary accent color.
  final MonetColor tertiary;

  /// The neutral color.
  final MonetColor neutral;

  /// The neutral variant color.
  final MonetColor neutralVariant;

  MonetColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.neutral,
    required this.neutralVariant,
  });

  /// Creates an instance from a map of raw color names and int colors taken
  /// from the system.
  factory MonetColors.fromMap(Map<String, int> colors) {
    final accent1 = <int, Color>{};
    final accent2 = <int, Color>{};
    final accent3 = <int, Color>{};
    final neutral1 = <int, Color>{};
    final neutral2 = <int, Color>{};

    colors.forEach((name, value) {
      /// Example color name: accent1_500
      final type = name.split('_')[0];
      final shade = int.parse(name.split('_')[1]);

      switch (type) {
        case 'accent1':
          accent1[shade] = Color(value);
          break;
        case 'accent2':
          accent2[shade] = Color(value);
          break;
        case 'accent3':
          accent3[shade] = Color(value);
          break;
        case 'neutral1':
          neutral1[shade] = Color(value);
          break;
        case 'neutral2':
          neutral2[shade] = Color(value);
          break;
      }
    });

    return MonetColors(
      primary: MonetColor._(accent1),
      secondary: MonetColor._(accent2),
      tertiary: MonetColor._(accent3),
      neutral: MonetColor._(neutral1),
      neutralVariant: MonetColor._(neutral2),
    );
  }
}
