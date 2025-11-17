import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/common/custom_shapes/curved_edges/app_curv_edges_widget.dart';
import 'package:modemart/common/widgets/app_circular_icon.dart';
import 'package:modemart/common/widgets/app_rounded_image.dart';
import 'package:modemart/common/widgets/appbar.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/constants/image_strings.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

class AppProductImageSlider extends StatelessWidget {
  const AppProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return AppCurvEdgesWidget(
      child: Container(
        color: isDark ? AppColors.darkGrey : AppColors.light,
        child: Stack(
          children: [
            // Main Large Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.productRadius * 3),
                child: Center(
                  child: Image(image: AssetImage(AppImages.productImage12)),
                ),
              ),
            ),

            // Image Slider
            Positioned(
              right: 0,
              bottom: 35,
              left: AppSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: AppSizes.spaceBtwItems),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => AppRoundedImage(
                    width: 80,
                    backgroundColor: isDark ? AppColors.dark : AppColors.white,
                    border: Border.all(color: AppColors.primary),
                    padding: const EdgeInsets.all(AppSizes.sm),
                    imageUrl: AppImages.productImage13,
                  ),
                ),
              ),
            ),
            // AppBar Icon
            Appbar(
              showBackArrow: true,
              actions: [
                AppCircularIcon(icon: Iconsax.heart_copy, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
