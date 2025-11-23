import 'package:flutter/material.dart';
import 'package:modemart/common/widgets/appbar.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: Appbar(title: Text('Reviews & Rating'), showBackArrow: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
      ),
    );
  }
}
