import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/common/layout/app_grid_layout.dart';
import 'package:modemart/common/widgets/app_circular_icon.dart';
import 'package:modemart/common/widgets/product_card_vertical.dart';
import 'package:modemart/features/shop/screens/home/home.dart';
import 'package:modemart/utils/constants/size.dart';

import '../../../../common/widgets/appbar.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: Text(
          "Wish List",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          AppCircularIcon(
            icon: Iconsax.add_copy,
            onPressed: () => Get.to(const Home()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              AppGridLayout(
                itemCount: 6,
                itemBuilder: (_, index) => const ProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
