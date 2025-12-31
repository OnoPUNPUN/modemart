import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/common/layout/app_grid_layout.dart';
import 'package:modemart/common/widgets/product_card_vertical.dart';
import 'package:modemart/utils/constants/size.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Dropdown
        DropdownButtonFormField(
          items:
              [
                    'Name',
                    'Higher Price',
                    'Lower Price',
                    'Sale',
                    'Newest',
                    'Popularity',
                  ]
                  .map(
                    (option) =>
                        DropdownMenuItem(value: option, child: Text(option)),
                  )
                  .toList(),
          onChanged: (value) {},
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
        ),
        const SizedBox(height: AppSizes.spaceBtwSections),
        // Products
        AppGridLayout(
          itemCount: 4,
          itemBuilder: (_, index) => ProductCardVertical(),
        ),
      ],
    );
  }
}
