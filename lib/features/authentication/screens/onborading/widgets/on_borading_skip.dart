import 'package:flutter/material.dart';
import 'package:modemart/features/authentication/controllers/onborading/onborading_controller.dart';

import '../../../../../utils/constants/size.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoradingSkip extends StatelessWidget {
  const OnBoradingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtils.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoradingController.instance.skipPage(),
        child: const Text("Skip"),
      ),
    );
  }
}
