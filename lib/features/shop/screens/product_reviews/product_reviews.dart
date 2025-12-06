import 'package:flutter/material.dart';
import 'package:modemart/common/widgets/appbar.dart';
import 'package:modemart/common/widgets/products/ratings/app_rating_indicator.dart';
import 'package:modemart/features/shop/screens/product_reviews/widgets/app_overall_product_rating.dart';
import 'package:modemart/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/constants/text_strings.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(title: Text('Reviews & Rating'), showBackArrow: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppTextStrings.ratingHeading),
            const SizedBox(height: AppSizes.spaceBtwItems),

            // Overall Product ratings
            AppOverallProductRating(),
            AppRatingIndicator(rating: 4.5),
            Text("12,611", style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: AppSizes.spaceBtwSections),

            // User Review List
            UserReviewCard(),
            UserReviewCard(),
            UserReviewCard(),
            UserReviewCard(),
          ],
        ),
      ),
    );
  }
}
