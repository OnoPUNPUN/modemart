import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modemart/common/widgets/loaders/app_animation_loader_widget.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

/// A utility class for managing a full-screen loading dialog.
class AppFullScreenLoader {
  /// Open a full-screen loading dialog with a given text and animation.
  /// This method doesn't return anything.
  ///
  /// Parameters:
  ///   - text: The text to be displayed in the loading dialog.
  ///   - animation: The Lottie animation to be shown.
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context:
          Get.overlayContext!, // Use Get.overlayContext for overlay dialogs
      barrierDismissible:
          false, // The dialog can't be dismissed by tapping outside it
      builder: (_) => PopScope(
        canPop: false, // Disable popping with the back button
        child: Container(
          color: AppHelperFunctions.isDarkMode(Get.context!)
              ? AppColors.dark
              : AppColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250), // Adjust the spacing as needed
              AppAnimationLoaderWidget(text: text, animation: animation),
            ],
          ), // Column
        ), // Container
      ), // PopScope
    );
  }

  // Stop the currently playing loading dialog
  // This method doesn't return anything
  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
