import 'package:flutter/material.dart';
import 'package:modemart/common/custom_shapes/containers/app_rounded_container.dart';
import 'package:modemart/utils/constants/colors.dart';
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
            ),
            // Price
          ],
        ),
        // Title

        // Stack Status

        // Brand
      ],
    );
  }
}
