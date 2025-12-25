import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/common/custom_shapes/containers/app_rounded_container.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

class OrderListItem extends StatelessWidget {
  const OrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 6,
      separatorBuilder: (_, __) =>
          const SizedBox(height: AppSizes.spaceBtwItems),
      itemBuilder: (_, index) => AppRoundedContainer(
        padding: const EdgeInsets.all(AppSizes.md),
        showBorder: true,
        backgroundColor: isDark ? AppColors.dark : AppColors.light,
        child: Column(
          mainAxisSize: .min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                // 1 - Icon
                const Icon(Iconsax.ship_copy),
                const SizedBox(width: AppSizes.spaceBtwItems / 2),

                // 2 - Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: AppColors.primary,
                          fontWeightDelta: 1,
                        ),
                      ),
                      Text(
                        '07 Nov 2025',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),

                // 3 - Icon
                IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.arrow_right_1_copy, size: AppSizes.iconSm),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),

            // Row - 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // 1 - Icon
                      const Icon(Iconsax.ship_copy),
                      const SizedBox(width: AppSizes.spaceBtwItems / 2),

                      // 2 - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '[#256f2]',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // 1 - Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: AppSizes.spaceBtwItems / 2),

                      // 2 - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '03 Feb 2025',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
