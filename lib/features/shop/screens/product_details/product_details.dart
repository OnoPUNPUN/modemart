import 'package:flutter/material.dart';
import 'package:modemart/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:modemart/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:modemart/utils/constants/size.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            AppProductImageSlider(),

            // Product Details
            Padding(
              padding: EdgeInsets.only(
                right: AppSizes.defaultSpace,
                left: AppSizes.defaultSpace,
                bottom: AppSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating & Share
                  AppRatingAndShare(),
                  // Price, Title, Stack & Brand
                  // Attributes
                  // Checkout Button
                  // Description
                  // Review
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
