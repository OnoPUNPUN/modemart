import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modemart/features/shop/screens/sub-category/sub_categories.dart';

import '../../../../../common/widgets/app_vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class AppHomeCategories extends StatelessWidget {
  const AppHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return AppVerticalImageText(
            image: AppImages.mensShirtsIcon,
            title: 'Shoes',
            onTap: () => Get.to(() => const SubCategories()),
          );
        },
      ),
    );
  }
}
