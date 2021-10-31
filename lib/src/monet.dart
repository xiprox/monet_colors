import 'dart:async';

import 'package:flutter/services.dart';

import 'colors.dart';

class Monet {
  static const MethodChannel _channel = MethodChannel('monet_colors');

  /// Returns colors on Android 12+. Returns null on all other versions and
  /// platforms.
  static Future<MonetColors?> get() async {
    final colors = await _channel.invokeMethod('getColors');
    if (colors == null) return null;
    return MonetColors.fromMap(Map<String, int>.from(colors));
  }
}
