import 'package:flutter/material.dart';
import 'package:modemart/common/styles/shadows.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/app_circular_container.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return Container(
      width: 100,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [AppShadowStyle.verticalShadow],
        borderRadius: BorderRadius.circular(AppSizes.productImageSize),
        color: isDark ? AppColors.darkGrey : AppColors.white,
      ),
      child: Column(
        children: [
          // Thumbanil, Wishlist Button, Discount Tag
          AppCircularContainer(
            height: 180,
            padding: const EdgeInsets.all(AppSizes.sm),
            backgroundColor: isDark ? AppColors.dark : AppColors.light,
          ),
          // -- Details
        ],
      ),
    );
  }
}
