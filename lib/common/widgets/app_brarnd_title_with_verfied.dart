import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/utils/constants/enums.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/size.dart';
import 'app_brand_title_text.dart';

class AppBrarndTitleWithVerfied extends StatelessWidget {
  const AppBrarndTitleWithVerfied({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = AppColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        ),
        const SizedBox(width: AppSizes.xs),
        const Icon(
          Iconsax.verify,
          color: AppColors.primary,
          size: AppSizes.iconXs,
        ),
      ],
    );
  }
}
