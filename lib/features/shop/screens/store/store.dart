import 'package:flutter/material.dart';
import 'package:modemart/common/custom_shapes/containers/app_rounded_container.dart';
import 'package:modemart/common/custom_shapes/containers/app_search_container.dart';
import 'package:modemart/common/layout/app_grid_layout.dart';
import 'package:modemart/common/texts/app_section_heading.dart';
import 'package:modemart/common/widgets/app_brand_show_case.dart';
import 'package:modemart/common/widgets/app_cart_counting.dart';
import 'package:modemart/common/widgets/appbar.dart';
import 'package:modemart/common/widgets/tabbar.dart';
import 'package:modemart/features/shop/screens/store/widgets/category_tab.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/constants/enums.dart';
import 'package:modemart/utils/constants/image_strings.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/app_brarnd_title_with_verfied.dart';
import '../../../../common/widgets/app_circular_image.dart';
import '../home/widget/app_brand_card.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: Appbar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [AppCartCounting(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, isInnnerBoxScrollable) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: isDark ? AppColors.black : AppColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(AppSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // Search Bar
                      SizedBox(height: AppSizes.spaceBtwItems),
                      AppSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(height: AppSizes.spaceBtwSections),

                      // Featured Brands
                      AppSectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

                      AppGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return AppBrandCard(showBorder: true, onTap: () {});
                        },
                      ),
                    ],
                  ),
                ),

                // Tabs
                bottom: const AppTabBar(
                  tabs: [
                    Tab(child: Text("Sports")),
                    Tab(child: Text("Furniture")),
                    Tab(child: Text("Electronics")),
                    Tab(child: Text("Cloths")),
                    Tab(child: Text("Comsmetics")),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
