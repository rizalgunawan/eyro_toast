library eyro_toast;

import 'dart:async';

import 'src/toast_duration.dart';
import 'src/toast_stub.dart'
    if (dart.library.io) 'src/toast_io.dart'
    if (dart.library.html) 'src/toast_html.dart';

export 'src/toast_duration.dart';
export 'src/toast_gravity.dart';
export 'src/toaster.dart';

import 'package:flutter/services.dart';

class EyroToast {
  static const MethodChannel _channel = MethodChannel('eyro_toast');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  /// Showing toast for specific platform
  static Future<bool> showToast({
    required String text,
    ToastDuration duration = ToastDuration.short,
  }) async {
    return await Toast.showToast(text: text, duration: duration);
  }
}
