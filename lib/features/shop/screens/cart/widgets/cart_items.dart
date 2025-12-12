import 'package:flutter/material.dart';
import 'package:modemart/common/texts/app_product_price_text.dart';
import 'package:modemart/common/widgets/products/cart/cart_item.dart';
import 'package:modemart/common/widgets/products/cart/product_qauntity_add_and_remove.dart';
import 'package:modemart/utils/constants/size.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => SizedBox(height: AppSizes.spaceBtwSections),
      itemCount: 6,
      itemBuilder: (_, index) => Column(
        children: [
          AppCartItem(),
          SizedBox(height: AppSizes.spaceBtwItems),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 70),
                  ProductQauntityAddandRemove(),
                ],
              ),
              // Price
              AppProductPriceText(price: '256'),
            ],
          ),
        ],
      ),
    );
  }
}
