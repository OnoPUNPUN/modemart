import 'package:flutter/material.dart';
import 'package:modemart/features/shop/screens/home/widget/home_app_bar.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/constants/image_strings.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';
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
                        // Heading
                        AppSectionHeading(
                          title: 'Popular Categories',
                          onPressed: () {},
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: AppSizes.spaceBtwItems),

                        // Categories List
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return AppVerticalImageText(
                                image: AppImages.mensShoesIcon,
                                title: 'Shoes',
                                onTap: () {},
                              );
                            },
                          ),
                        ),
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

class AppVerticalImageText extends StatelessWidget {
  const AppVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = Colors.white,
    this.backGroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backGroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            // Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                color:
                    backGroundColor ??
                    (isDark ? AppColors.dark : AppColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: AppColors.dark,
                ),
              ),
            ),
            // Text
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            SizedBox(
              width: 56,
              child: Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
