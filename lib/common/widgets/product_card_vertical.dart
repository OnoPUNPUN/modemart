import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/common/styles/shadows.dart';
import 'package:modemart/common/widgets/app_circular_icon.dart';
import 'package:modemart/common/widgets/app_rounded_image.dart';
import 'package:modemart/features/shop/screens/product_details/product_details.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/constants/image_strings.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/app_rounded_container.dart';
import '../texts/app_product_price_text.dart';
import '../texts/app_product_title_text.dart';
import 'app_brarnd_title_with_verfied.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [AppShadowStyle.verticalShadow],
          borderRadius: BorderRadius.circular(AppSizes.productRadius),
          color: isDark ? AppColors.darkerGrey : AppColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail, Wishlist Button, Discount Tag
            AppRoundedContainer(
              height: 180,
              width: 180,
              padding: const EdgeInsets.all(AppSizes.sm),
              backgroundColor: isDark ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  // Thumb Image
                  const Center(
                    child: AppRoundedImage(
                      imageUrl: AppImages.productImage11,
                      applyImageRadius: true,
                      fit: BoxFit.contain,
                    ),
                  ),

                  // Sale Tag
                  Positioned(
                    top: 12,
                    left: 5,
                    child: AppRoundedContainer(
                      radius: AppSizes.sm,
                      backgroundColor: AppColors.secondary.withOpacity(0.8),
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

            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            // -- Details
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppProductTitleText(
                    title: 'Nike Air Jordon White Red',
                    smallSize: true,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems / 2),
                  AppBrarndTitleWithVerfied(title: 'Nike'),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: AppSizes.sm),
                  child: AppProductPriceText(price: '30000'),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSizes.cardRadiusMd),
                      bottomRight: Radius.circular(AppSizes.productRadius),
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
    );
  }
}
