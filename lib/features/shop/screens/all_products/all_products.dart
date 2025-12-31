import 'package:flutter/material.dart';
import 'package:modemart/common/widgets/appbar.dart';
import 'package:modemart/common/widgets/products/sortable/sortable_products.dart';
import 'package:modemart/utils/constants/size.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: SortableProducts(),
        ),
      ),
    );
  }
}
