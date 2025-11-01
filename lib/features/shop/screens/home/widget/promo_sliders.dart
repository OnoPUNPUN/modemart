import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modemart/features/shop/controllers/home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../common/widgets/app_rounded_image.dart';
import '../../../../../utils/constants/size.dart';

class PromoSliders extends StatelessWidget {
  const PromoSliders({super.key, required this.baners});

  final List<String> baners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              controller.updatePageIndicator(index);
            },
          ),
          items: baners.map((url) => AppRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Obx(
          () => AnimatedSmoothIndicator(
            activeIndex: controller.carouselCurrentIndex.value,
            count: baners.length,
            effect: const WormEffect(
              activeDotColor: Colors.green,
              dotHeight: 10,
              dotWidth: 10,
              spacing: 10,
            ),
          ),
        ),
      ],
    );
  }
}
