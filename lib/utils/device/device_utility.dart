import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class AppDeviceUtils {
  AppDeviceUtils._(); // Private constructor to prevent instantiation.

  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
      enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge,
    );
  }

  /// Hides the system status bar.
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  /// Shows the system status bar.
  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  /// Sets the color of the status bar.
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  /// Sets the preferred device orientation(s).
  static Future<void> setPreferredOrientations(
    List<DeviceOrientation> orientations,
  ) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  /// Checks for active internet connection by attempting to lookup 'example.com'.
  /// This is a lightweight check and not guaranteed to work for all network conditions.
  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  /// Hides the soft keyboard if it is visible.
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  /// Checks if the soft keyboard is visible.
  static bool isKeyboardVisible(BuildContext context) {
    // We use MediaQuery.of(context).viewInsets.bottom > 0 to check keyboard visibility.
    final viewInsets = MediaQuery.of(context).viewInsets;
    return viewInsets.bottom > 0;
  }

  /// Checks if the device is currently in landscape orientation.
  static bool isLandscapeOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  /// Checks if the device is currently in portrait orientation.
  static bool isPortraitOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  /// Gets the full height of the screen (including status bar and navigation bar).
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  /// Gets the full width of the screen.
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// Gets the device's pixel ratio.
  static double getDevicePixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  /// Gets the height of the status bar (notch area).
  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  /// Gets the height of the bottom safe area (often used by the navigation bar or home indicator).
  static double getBottomNavigationBarHeight() {
    // Standard Flutter method to get the height of the Material design bottom navigation bar.
    return kBottomNavigationBarHeight;
  }

  /// Gets the height of the standard AppBar.
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  /// Gets the height of the soft keyboard.
  static double getKeyboardHeight(BuildContext context) {
    final viewInsets = MediaQuery.of(context).viewInsets;
    return viewInsets.bottom;
  }

  /// Checks if the application is running on a physical device (Android or iOS).
  static bool isPhysicalDevice() {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  /// Triggers a brief vibration.
  /// The provided snippet seems to call vibrate twice, which might be too long.
  /// We will adjust it to a standard, single short vibration.
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    // If you need a more controlled/longer vibration, you would use platform channels.
    // For Flutter-standard haptics, HapticFeedback.vibrate() is typically a short click.
  }

  /// Checks if the current platform is iOS.
  static bool isIOS() {
    return Platform.isIOS;
  }

  /// Checks if the current platform is Android.
  static bool isAndroid() {
    return Platform.isAndroid;
  }

  static Future<void> launchAppUrl(String urlString) async {
    final Uri uri = Uri.parse(urlString);
    if (await launcher.canLaunchUrl(uri)) {
      await launcher.launchUrl(uri);
    } else {
      throw 'Could not launch $urlString';
    }
  }
}
