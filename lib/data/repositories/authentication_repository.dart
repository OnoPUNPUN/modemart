import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:modemart/features/authentication/screens/login/login_screen.dart';
import 'package:modemart/features/authentication/screens/onborading/onborading_screen.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // variable
  final deviceStorage = GetStorage();

  // call from main.dart app luch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    // local Storage

    if (kDebugMode) {
      print(
        "====================================== Get Storage Auth Repo =========================",
      );
      print(deviceStorage.read('isFirstTime'));
    }
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => LoginScreen())
        : Get.offAll(const OnboradingScreen());
  }
}
