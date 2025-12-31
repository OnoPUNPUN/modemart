import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modemart/features/shop/screens/all_products/all_products.dart';
import 'package:modemart/features/shop/screens/home/widget/app_home_categories.dart';
import 'package:modemart/features/shop/screens/home/widget/home_app_bar.dart';
import 'package:modemart/features/shop/screens/home/widget/promo_sliders.dart';
import 'package:modemart/utils/constants/image_strings.dart';
import 'package:modemart/utils/constants/size.dart';
import '../../../../common/custom_shapes/containers/app_primary_header_container.dart';
import '../../../../common/custom_shapes/containers/app_search_container.dart';
import '../../../../common/layout/app_grid_layout.dart';
import '../../../../common/texts/app_section_heading.dart';
import '../../../../common/widgets/product_card_vertical.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppPrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  const HomeAppBar(),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  // SearchBar
                  const AppSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        // Heading
                        AppSectionHeading(
                          title: 'Popular Categories',
                          onPressed: () {},
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: AppSizes.spaceBtwItems),

                        // Categories List
                        const AppHomeCategories(),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),
            // Body
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  PromoSliders(
                    baners: [
                      AppImages.promoBanner1,
                      AppImages.promoBanner2,
                      AppImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  // Heading
                  AppSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProducts()),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),

                  // Popular Products
                  AppGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const ProductCardVertical(),
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
