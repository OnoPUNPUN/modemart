import 'package:flutter/material.dart';
import 'package:modemart/common/custom_shapes/containers/app_rounded_container.dart';
import 'package:modemart/common/texts/app_product_price_text.dart';
import 'package:modemart/common/texts/app_product_title_text.dart';
import 'package:modemart/common/widgets/app_brarnd_title_with_verfied.dart';
import 'package:modemart/common/widgets/app_circular_image.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/constants/enums.dart';
import 'package:modemart/utils/constants/image_strings.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & Sale Price
        Row(
          children: [
            // Sale Tag
            AppRoundedContainer(
              radius: AppSizes.sm,
              backgroundColor: AppColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.sm,
                vertical: AppSizes.xs,
              ),
              child: Text(
                "25%",
                style: Theme.of(
                  context,
                ).textTheme.labelLarge!.apply(color: AppColors.black),
              ),
            ),

            const SizedBox(width: AppSizes.spaceBtwItems),

            // Price
            Text(
              "৳25000",
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),

            AppProductPriceText(price: "1000", isLarge: true),
          ],
        ),

        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        // Title
        const AppProductTitleText(title: "Samsung Galaxy S9"),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        // Stack Status
        Row(
          children: [
            const AppProductTitleText(title: "Status"),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

        // Brand
        Row(
          children: [
            AppCircularImage(
              image: AppImages.mensShoesIcon,
              width: 32,
              height: 32,
              overlyColor: isDark ? AppColors.white : AppColors.black,
            ),
            AppBrarndTitleWithVerfied(
              title: "Samsung",
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
