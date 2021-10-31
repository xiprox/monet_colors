
# Monet Colors

A Flutter plugin that exposes [Monet (Material You, Material 3)](https://m3.material.io/styles/color/dynamic-color/user-generated-color) [system colors](https://developer.android.com/reference/android/R.color#system_accent1_0) on Android 12. Returns `null` on unsupported platforms and leaves handling that to you. For a backwards compatible implementation, see [monet](https://pub.dev/packages/monet).

![](https://i.imgur.com/1sQEPAb.png)

## Install & Use

See: [Installing](https://pub.dev/packages/monet_colors/install).

```dart
final MonetColors? colors = await Monet.get();

final primary200 = colors.primary[200];
final secondary400 = colors.secondary.shade400;
final tertiary = colors.tertiary;
final tertiary300 = tertiary[300];
// ...
```

Check out the example project for a demo of all the colors.