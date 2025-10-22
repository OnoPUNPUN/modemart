import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_strings.dart';

class AppTremsCondition extends StatelessWidget {
  const AppTremsCondition({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "${AppTextStrings.iAgreeTo} ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: AppTextStrings.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? AppColors.white : AppColors.primary,
                  color: isDark ? AppColors.white : AppColors.primary,
                ),
              ),
              TextSpan(
                text: " ${AppTextStrings.and} ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: AppTextStrings.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? AppColors.white : AppColors.primary,
                  color: isDark ? AppColors.white : AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
