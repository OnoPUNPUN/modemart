import 'package:flutter/material.dart';

import '../../features/shop/screens/home/widget/app_brand_card.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/size.dart';
import '../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/app_rounded_container.dart';

class AppBrandShowCase extends StatelessWidget {
  const AppBrandShowCase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return AppRoundedContainer(
      showBorder: true,
      padding: EdgeInsets.all(AppSizes.md),
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Column(
        children: [
          // BRand with Products Count
          const AppBrandCard(showBorder: false),
          const SizedBox(height: AppSizes.spaceBtwItems,),

          // Brand Top 3 Product Images
          Row(
            children: images
                .map((iamge) => brandTopProduct(iamge, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Expanded brandTopProduct(String image, context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return Expanded(
      child: AppRoundedContainer(
        height: 100,
        backgroundColor: isDark ? AppColors.darkGrey : AppColors.light,
        margin: const EdgeInsets.only(right: AppSizes.sm),
        padding: EdgeInsets.all(AppSizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}