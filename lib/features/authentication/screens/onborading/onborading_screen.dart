import 'package:flutter/material.dart';
import 'package:modemart/features/authentication/screens/onborading/widgets/on_borading_dot_navigation.dart';
import 'package:modemart/features/authentication/screens/onborading/widgets/on_borading_next_button.dart';
import 'package:modemart/features/authentication/screens/onborading/widgets/on_borading_page.dart';
import 'package:modemart/features/authentication/screens/onborading/widgets/on_borading_skip.dart';
import 'package:modemart/utils/constants/image_strings.dart';
import 'package:modemart/utils/constants/text_strings.dart';
import 'package:get/get.dart';

import '../../controllers/onborading/onborading_controller.dart';

class OnboradingScreen extends StatelessWidget {
  const OnboradingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoradingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoradingPage(
                image: AppImages.onBoradingImage1,
                title: AppTextStrings.onBoardingTitle1,
                subTitle: AppTextStrings.onBoardingSubTitle1,
              ),
              OnBoradingPage(
                image: AppImages.onBoradingImage2,
                title: AppTextStrings.onBoardingTitle2,
                subTitle: AppTextStrings.onBoardingSubTitle2,
              ),
              OnBoradingPage(
                image: AppImages.onBoradingImage3,
                title: AppTextStrings.onBoardingTitle3,
                subTitle: AppTextStrings.onBoardingSubTitle3,
              ),
            ],
          ),

          // skip Button
          const OnBoradingSkip(),

          // Dot Navigation SmoothPageIndicator
          const OnBoradingDotNavigation(),

          // Circular Button
          const OnBoradingNextButton(),
        ],
      ),
    );
  }
}
