package dev.ihsan.monet

import android.content.Context
import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

class MonetPlugin: FlutterPlugin, MethodCallHandler {
  private lateinit var channel : MethodChannel

  private lateinit var context: Context

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "monet_colors")
    channel.setMethodCallHandler(this)
    context = flutterPluginBinding.applicationContext
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    if (call.method == "getColors") {
      if (android.os.Build.VERSION.SDK_INT < android.os.Build.VERSION_CODES.S) {
        result.success(null)
      }

      val resources = context.resources
      val colors = mapOf(
        // Accent 1
        "accent1_0" to resources.getColor(android.R.color.system_accent1_0),
        "accent1_10" to resources.getColor(android.R.color.system_accent1_10),
        "accent1_50" to resources.getColor(android.R.color.system_accent1_50),
        "accent1_100" to resources.getColor(android.R.color.system_accent1_100),
        "accent1_200" to resources.getColor(android.R.color.system_accent1_200),
        "accent1_300" to resources.getColor(android.R.color.system_accent1_300),
        "accent1_400" to resources.getColor(android.R.color.system_accent1_400),
        "accent1_500" to resources.getColor(android.R.color.system_accent1_500),
        "accent1_600" to resources.getColor(android.R.color.system_accent1_600),
        "accent1_700" to resources.getColor(android.R.color.system_accent1_700),
        "accent1_800" to resources.getColor(android.R.color.system_accent1_800),
        "accent1_900" to resources.getColor(android.R.color.system_accent1_900),
        "accent1_1000" to resources.getColor(android.R.color.system_accent1_1000),
        // Accent 2
        "accent2_0" to resources.getColor(android.R.color.system_accent2_0),
        "accent2_10" to resources.getColor(android.R.color.system_accent2_10),
        "accent2_50" to resources.getColor(android.R.color.system_accent2_50),
        "accent2_100" to resources.getColor(android.R.color.system_accent2_100),
        "accent2_200" to resources.getColor(android.R.color.system_accent2_200),
        "accent2_300" to resources.getColor(android.R.color.system_accent2_300),
        "accent2_400" to resources.getColor(android.R.color.system_accent2_400),
        "accent2_500" to resources.getColor(android.R.color.system_accent2_500),
        "accent2_600" to resources.getColor(android.R.color.system_accent2_600),
        "accent2_700" to resources.getColor(android.R.color.system_accent2_700),
        "accent2_800" to resources.getColor(android.R.color.system_accent2_800),
        "accent2_900" to resources.getColor(android.R.color.system_accent2_900),
        "accent2_1000" to resources.getColor(android.R.color.system_accent2_1000),
        // Accent 3
        "accent3_0" to resources.getColor(android.R.color.system_accent3_0),
        "accent3_10" to resources.getColor(android.R.color.system_accent3_10),
        "accent3_50" to resources.getColor(android.R.color.system_accent3_50),
        "accent3_100" to resources.getColor(android.R.color.system_accent3_100),
        "accent3_200" to resources.getColor(android.R.color.system_accent3_200),
        "accent3_300" to resources.getColor(android.R.color.system_accent3_300),
        "accent3_400" to resources.getColor(android.R.color.system_accent3_400),
        "accent3_500" to resources.getColor(android.R.color.system_accent3_500),
        "accent3_600" to resources.getColor(android.R.color.system_accent3_600),
        "accent3_700" to resources.getColor(android.R.color.system_accent3_700),
        "accent3_800" to resources.getColor(android.R.color.system_accent3_800),
        "accent3_900" to resources.getColor(android.R.color.system_accent3_900),
        "accent3_1000" to resources.getColor(android.R.color.system_accent3_1000),
        // Neutral 1
        "neutral1_0" to resources.getColor(android.R.color.system_neutral1_0),
        "neutral1_10" to resources.getColor(android.R.color.system_neutral1_10),
        "neutral1_50" to resources.getColor(android.R.color.system_neutral1_50),
        "neutral1_100" to resources.getColor(android.R.color.system_neutral1_100),
        "neutral1_200" to resources.getColor(android.R.color.system_neutral1_200),
        "neutral1_300" to resources.getColor(android.R.color.system_neutral1_300),
        "neutral1_400" to resources.getColor(android.R.color.system_neutral1_400),
        "neutral1_500" to resources.getColor(android.R.color.system_neutral1_500),
        "neutral1_600" to resources.getColor(android.R.color.system_neutral1_600),
        "neutral1_700" to resources.getColor(android.R.color.system_neutral1_700),
        "neutral1_800" to resources.getColor(android.R.color.system_neutral1_800),
        "neutral1_900" to resources.getColor(android.R.color.system_neutral1_900),
        "neutral1_1000" to resources.getColor(android.R.color.system_neutral1_1000),
        // Neutral 2
        "neutral2_0" to resources.getColor(android.R.color.system_neutral2_0),
        "neutral2_10" to resources.getColor(android.R.color.system_neutral2_10),
        "neutral2_50" to resources.getColor(android.R.color.system_neutral2_50),
        "neutral2_100" to resources.getColor(android.R.color.system_neutral2_100),
        "neutral2_200" to resources.getColor(android.R.color.system_neutral2_200),
        "neutral2_300" to resources.getColor(android.R.color.system_neutral2_300),
        "neutral2_400" to resources.getColor(android.R.color.system_neutral2_400),
        "neutral2_500" to resources.getColor(android.R.color.system_neutral2_500),
        "neutral2_600" to resources.getColor(android.R.color.system_neutral2_600),
        "neutral2_700" to resources.getColor(android.R.color.system_neutral2_700),
        "neutral2_800" to resources.getColor(android.R.color.system_neutral2_800),
        "neutral2_900" to resources.getColor(android.R.color.system_neutral2_900),
        "neutral2_1000" to resources.getColor(android.R.color.system_neutral2_1000)
      )
      result.success(colors)
    } else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
