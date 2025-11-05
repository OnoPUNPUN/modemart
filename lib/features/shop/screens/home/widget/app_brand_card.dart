import 'package:flutter/material.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

import '../../../../../common/custom_shapes/containers/app_rounded_container.dart';
import '../../../../../common/widgets/app_brarnd_title_with_verfied.dart';
import '../../../../../common/widgets/app_circular_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/enums.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/size.dart';

class AppBrandCard extends StatelessWidget {
  const AppBrandCard({super.key, required this.showBorder, this.onTap});

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: AppRoundedContainer(
        padding: const EdgeInsets.all(AppSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // Icon
            Flexible(
              child: AppCircularImage(
                image: AppImages.womensDressesIcon,
                isNetworkImage: false,
                backGroundColor: Colors.transparent,
                overlyColor: isDark ? AppColors.white : AppColors.black,
              ),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems / 2),

            // Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBrarndTitleWithVerfied(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    "256 Products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
