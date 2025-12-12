import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/common/widgets/app_circular_icon.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

class ProductQauntityAddandRemove extends StatelessWidget {
  const ProductQauntityAddandRemove({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: .min,
      children: [
        AppCircularIcon(
          icon: Iconsax.minus_copy,
          width: 32,
          height: 32,
          size: AppSizes.md,
          color: AppHelperFunctions.isDarkMode(context)
              ? AppColors.black
              : AppColors.white,
          backgroundColor: AppHelperFunctions.isDarkMode(context)
              ? AppColors.white
              : AppColors.black,
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: AppSizes.spaceBtwItems),
        AppCircularIcon(
          icon: Iconsax.add_copy,
          width: 32,
          height: 32,
          size: AppSizes.md,
          color: AppColors.white,
          backgroundColor: AppColors.primary,
        ),
      ],
    );
  }
}
