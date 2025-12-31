import 'package:flutter/material.dart';
import 'package:modemart/common/widgets/appbar.dart';
import 'package:modemart/common/widgets/products/sortable/sortable_products.dart';
import 'package:modemart/features/shop/screens/home/widget/app_brand_card.dart';
import 'package:modemart/utils/constants/size.dart';

class BrandsProducts extends StatelessWidget {
  const BrandsProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(title: Text('Nikke')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // Brand details
              AppBrandCard(showBorder: true),
              const SizedBox(height: AppSizes.spaceBtwSections),

              SortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
