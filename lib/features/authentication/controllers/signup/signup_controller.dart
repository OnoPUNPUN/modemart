import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modemart/utils/constants/image_strings.dart';
import 'package:modemart/utils/loadder/app_fullscreen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Variables
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final firstName = TextEditingController();
  final passwrod = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // -- signUp
  Future<void> signUp() async {
    try {
      // Start looking
      AppFullScreenLoader.openLoadingDialog(
        'We are processing your information',
        AppImages.loaderAnimation,
      );

      // check internet Connectivity
      final isConnected = await 

      // From valiabation

      // Privacy Policy Check

      // Register User in Firebase Auth & Save data in the Firebase

      // Save Auth user data in Firebase Firestore

      // Show Success Message

      // Move to verify Email Screen
    } catch (e) {
      // Show some Generic Error to the user
    } finally {
      // Remove loader
    }
  }
}
