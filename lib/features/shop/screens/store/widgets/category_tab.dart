import 'package:flutter/material.dart';
import 'package:modemart/common/layout/app_grid_layout.dart';
import 'package:modemart/common/texts/app_section_heading.dart';
import 'package:modemart/common/widgets/product_card_vertical.dart';

import '../../../../../common/widgets/app_brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/size.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // Brands
              AppBrandShowCase(
                images: [
                  AppImages.productImage11,
                  AppImages.productImage5,
                  AppImages.productImage12,
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              // Prodcuts
              AppSectionHeading(
                title: "You Might Like",
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),

              AppGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const ProductCardVertical(),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
