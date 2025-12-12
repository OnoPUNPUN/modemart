import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/features/shop/screens/cart/cart_screen.dart';

import '../../utils/constants/colors.dart';

class AppCartCounting extends StatelessWidget {
  const AppCartCounting({super.key, required this.onPressed, this.iconColor});

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () => Get.to(() => const CartScreen()),
          icon: Icon(Iconsax.shopping_bag, color: iconColor),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: AppColors.white,
                  fontSizeFactor: 1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
