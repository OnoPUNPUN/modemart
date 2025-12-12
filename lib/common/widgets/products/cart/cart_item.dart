import 'package:flutter/material.dart';
import 'package:modemart/common/texts/app_product_title_text.dart';
import 'package:modemart/common/widgets/app_brarnd_title_with_verfied.dart';
import 'package:modemart/common/widgets/app_rounded_image.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/constants/image_strings.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

class AppCartItem extends StatelessWidget {
  const AppCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image
        AppRoundedImage(
          imageUrl: AppImages.productImage11,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(AppSizes.sm),
          backgroundColor: AppHelperFunctions.isDarkMode(context)
              ? AppColors.darkerGrey
              : AppColors.light,
        ),
        SizedBox(width: AppSizes.spaceBtwItems),

        // Title, price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBrarndTitleWithVerfied(title: 'Nike'),
              const AppProductTitleText(
                title: 'Black Sports shoes',
                maxLines: 1,
              ),
              // Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'BD 08',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
