import 'package:flutter/material.dart';
import 'package:modemart/common/custom_shapes/containers/app_rounded_container.dart';
import 'package:modemart/common/texts/app_product_price_text.dart';
import 'package:modemart/common/texts/app_product_title_text.dart';
import 'package:modemart/common/texts/app_section_heading.dart';
import 'package:modemart/common/widgets/chips/app_choice_chip.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // selected Attributes
        AppRoundedContainer(
          padding: const EdgeInsets.all(AppSizes.md),
          backgroundColor: isDark ? AppColors.darkerGrey : AppColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const AppSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(width: AppSizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const AppProductTitleText(
                            title: 'Price: ',
                            smallSize: true,
                          ),
                          const SizedBox(width: AppSizes.spaceBtwItems),
                          // Actual Price
                          Text(
                            "৳2500",
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),

                          const SizedBox(width: AppSizes.spaceBtwItems),

                          // Sale Price
                          AppProductPriceText(price: '1000'),
                        ],
                      ),
                      Row(
                        children: [
                          const AppProductTitleText(
                            title: 'Stock: ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // Variation Description
              const AppProductTitleText(
                title: 'This is the Description for this fucking Product!!!',
                smallSize: true,
                maxLines: 4,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
            ],
          ),
        ),
        // Attributes
        /* -- For Colors -- */
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSizes.spaceBtwSections / 2),
            const AppSectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                AppChoiceChip(
                  text: 'Green',
                  selected: false,
                  onSelected: (value) {},
                ),
                AppChoiceChip(
                  text: 'Purple',
                  selected: true,
                  onSelected: (value) {},
                ),
                AppChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        /* -- For Size -- */
        const SizedBox(height: AppSizes.spaceBtwSections / 2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppSectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                AppChoiceChip(
                  text: ' 44',
                  selected: true,
                  onSelected: (value) {},
                ),
                AppChoiceChip(
                  text: ' 45',
                  selected: false,
                  onSelected: (value) {},
                ),
                AppChoiceChip(
                  text: ' 55',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
