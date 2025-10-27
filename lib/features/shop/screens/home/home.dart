import 'package:flutter/material.dart';
import 'package:modemart/features/shop/screens/home/widget/home_app_bar.dart';
import 'package:modemart/utils/constants/size.dart';
import '../../../../common/custom_shapes/containers/app_primary_header_container.dart';
import '../../../../common/custom_shapes/containers/app_search_container.dart';
import '../../../../common/texts/app_section_heading.dart';

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
                        AppSectionHeading(
                          title: 'Popular Categories',
                          onPressed: () {},
                          showActionButton: false,
                        ),
                        const SizedBox(height: AppSizes.spaceBtwItems),
                      ],
                    ),
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

