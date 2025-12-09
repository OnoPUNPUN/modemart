import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/common/custom_shapes/containers/app_rounded_container.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return AppRoundedContainer(
      padding: const EdgeInsets.all(AppSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? AppColors.primary.withValues(alpha: 0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : isDark
          ? AppColors.darkerGrey
          : AppColors.grey,
      margin: EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle : null,
              color: selectedAddress
                  ? isDark
                        ? AppColors.light
                        : AppColors.dark.withValues(alpha: 0.2)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                '14 Wb/1, Lake City, Khilkhet, Dhaka',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: AppSizes.sm / 2),
              const Text('(+880) 1601592828', maxLines: 1, overflow: .ellipsis),
              const SizedBox(height: AppSizes.sm / 2),
              const Text(
                '142515 Mike Hunt, Lake City, Khilkhet, Dhaka, 1414, BD',
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
