import 'package:flutter/material.dart';
import 'package:modemart/common/custom_shapes/containers/app_rounded_container.dart';
import 'package:modemart/common/custom_shapes/containers/app_search_container.dart';
import 'package:modemart/common/layout/app_grid_layout.dart';
import 'package:modemart/common/texts/app_section_heading.dart';
import 'package:modemart/common/widgets/app_cart_counting.dart';
import 'package:modemart/common/widgets/appbar.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/constants/enums.dart';
import 'package:modemart/utils/constants/image_strings.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/app_brarnd_title_with_verfied.dart';
import '../../../../common/widgets/app_circular_image.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: Appbar(
        title: Text("Store", style: Theme
            .of(context)
            .textTheme
            .headlineMedium),
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

                    AppGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: AppRoundedContainer(
                          padding: const EdgeInsets.all(AppSizes.sm),
                          showBorder: true,
                          backgroundColor: Colors.transparent,
                          child: Row(
                            children: [
                              // Icon
                              Flexible(
                                child: AppCircularImage(
                                  image: AppImages.womensDressesIcon,
                                  isNetworkImage: false,
                                  backGroundColor: Colors.transparent,
                                  overlyColor: isDark
                                      ? AppColors.white
                                      : AppColors.black,
                                ),
                              ),
                              const SizedBox(width: AppSizes.spaceBtwItems / 2),

                              // Text
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppBrarndTitleWithVerfied(
                                      title: 'Nike',
                                      brandTextSize: TextSizes.large,
                                    ),
                                    Text(
                                      "256 Products",
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme
                                          .of(context)
                                          .textTheme
                                          .labelMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    })
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
