import 'package:flutter/material.dart';
import 'package:modemart/common/custom_shapes/containers/app_rounded_container.dart';
import 'package:modemart/common/widgets/products/ratings/app_rating_indicator.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/constants/image_strings.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(AppImages.user)),
                const SizedBox(width: AppSizes.spaceBtwItems),
                Text('Jhon Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),

        // Review
        Row(
          children: [
            const AppRatingIndicator(rating: 4),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('01 Nov 2025', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        ReadMoreText(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          trimLines: 2,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          trimMode: .Line,
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: .bold,
            color: AppColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: .bold,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),

        // compnay Review
        AppRoundedContainer(
          backgroundColor: isDark ? AppColors.darkGrey : AppColors.grey,
          child: Padding(
            padding: .all(AppSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Joy's Store",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      "01 Nov 2024",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                const ReadMoreText(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  trimLines: 2,
                  trimMode: .Line,
                  trimExpandedText: " show less",
                  trimCollapsedText: " show more",
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: .bold,
                    color: AppColors.primary,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: .bold,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwSections),
      ],
    );
  }
}
