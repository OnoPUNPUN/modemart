import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modemart/common/custom_shapes/containers/app_rounded_container.dart';
import 'package:modemart/common/screens/success_screen.dart';
import 'package:modemart/common/widgets/appbar.dart';
import 'package:modemart/common/widgets/products/cart/coupon_code.dart';
import 'package:modemart/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:modemart/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:modemart/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:modemart/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:modemart/navigation_menu.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/constants/image_strings.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: Appbar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Items in cart -- ///
              const CartItems(showAddRemoveButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// -- Coupon Textfield -- ///
              AppCouponCode(),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// -- Billing Section -- ///
              AppRoundedContainer(
                padding: const EdgeInsets.all(AppSizes.md),
                showBorder: true,
                backgroundColor: isDark ? AppColors.black : AppColors.white,
                child: Column(
                  children: [
                    // Pricing
                    BillingAmountSection(),

                    const SizedBox(height: AppSizes.spaceBtwItems),

                    // Divider
                    const Divider(),
                    const SizedBox(height: AppSizes.spaceBtwItems),

                    // Payment Methods
                    BillingPaymentSection(),
                    const SizedBox(height: AppSizes.spaceBtwItems),

                    // Address
                    BillingAddressSection(),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: AppImages.successfulPaymentIcon,
              title: 'Payment Success',
              subTitle: 'Your item will be shipped',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: Text('Checkout ৳256.0'),
        ),
      ),
    );
  }
}
