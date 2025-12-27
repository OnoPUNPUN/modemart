import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/common/custom_shapes/containers/app_rounded_container.dart';
import 'package:modemart/common/styles/shadows.dart';
import 'package:modemart/common/texts/app_product_price_text.dart';
import 'package:modemart/common/texts/app_product_title_text.dart';
import 'package:modemart/common/widgets/app_brarnd_title_with_verfied.dart';
import 'package:modemart/common/widgets/app_circular_icon.dart';
import 'package:modemart/common/widgets/app_rounded_image.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/constants/image_strings.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.productRadius),
        color: isDark ? AppColors.darkerGrey : AppColors.lightContainer,
      ),
      child: Row(
        children: [
          // Thumbnail
          AppRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(AppSizes.sm),
            backgroundColor: isDark ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [
                // Thumbnail Image
                SizedBox(
                  height: 120,
                  width: 120,
                  child: AppRoundedImage(
                    imageUrl: AppImages.productImage11,
                    applyImageRadius: true,
                  ),
                ),

                // Sale Tag
                Positioned(
                  top: 12,
                  left: 5,
                  child: AppRoundedContainer(
                    radius: AppSizes.sm,
                    backgroundColor: AppColors.secondary.withValues(alpha: 0.8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.sm,
                      vertical: AppSizes.xs,
                    ),
                    child: Text(
                      "40%",
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge!.apply(color: AppColors.black),
                    ),
                  ),
                ),
                // Fav Button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: AppCircularIcon(
                    icon: Iconsax.heart,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          // Details
          SizedBox(
            width: 214,
            height: 120,
            child: Padding(
              padding: const EdgeInsets.only(
                top: AppSizes.sm,
                left: AppSizes.sm,
                right: 0,
                bottom: 0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title and Brand
                  const Padding(
                    padding: EdgeInsets.only(right: AppSizes.sm),
                    child: AppProductTitleText(
                      title: 'Red Nikke C. Mike Rack Edition',
                      smallSize: true,
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems / 2),
                  const Padding(
                    padding: EdgeInsets.only(right: AppSizes.sm),
                    child: AppBrarndTitleWithVerfied(title: 'Nike'),
                  ),
                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price Tag
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: AppSizes.sm),
                          child: AppProductPriceText(price: '256.0'),
                        ),
                      ),

                      // Add To cart
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSizes.cardRadiusMd),
                            bottomRight: Radius.circular(
                              AppSizes.productRadius,
                            ),
                          ),
                        ),
                        child: const SizedBox(
                          width: AppSizes.iconLg * 1.2,
                          height: AppSizes.iconLg * 1.2,
                          child: Icon(Iconsax.add_copy, color: AppColors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
