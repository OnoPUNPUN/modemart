import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modemart/common/layout/app_grid_layout.dart';
import 'package:modemart/common/texts/app_section_heading.dart';
import 'package:modemart/common/widgets/appbar.dart';
import 'package:modemart/features/shop/screens/brand/brands_products.dart';
import 'package:modemart/features/shop/screens/home/widget/app_brand_card.dart';
import 'package:modemart/utils/constants/size.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // Heading
              AppSectionHeading(title: 'Brands'),
              const SizedBox(height: AppSizes.spaceBtwItems),

              // Brands
              AppGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => AppBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BrandsProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
