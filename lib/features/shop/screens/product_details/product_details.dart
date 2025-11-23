import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/common/texts/app_section_heading.dart';
import 'package:modemart/features/shop/screens/product_details/widgets/app_bottom_add_to_cart.dart';
import 'package:modemart/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:modemart/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:modemart/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:modemart/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:modemart/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomAddToCart(),
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
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  // Price, Title, Stack & Brand
                  ProductMetaData(),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  // Attributes
                  ProductAttributes(),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  // Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  // Description
                  const AppSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  ReadMoreText(
                    'The Samsung Galaxy S9 is a smartphone released in 2018 featuring a 5.8-inch Quad HD+ Super AMOLED display, a single 12MP rear camera with a variable aperture, and a 3,000 mAh battery. It comes with 4GB of RAM, is powered by an octa-core processor, and offers storage options of 64GB/128GB/256GB, expandable up to 400GB via a microSD card. The device includes an IP68 water and dust resistance rating, stereo speakers tuned by AKG, and runs on Android 8.0 Oreo.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Less',
                    moreStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  // Review
                  const Divider(),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppSectionHeading(
                        title: 'Reviews(20)',
                        onPressed: () {},
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () => Get.to(() => const ProductReviews()),
                        icon: Icon(Iconsax.arrow_right_3_copy, size: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
