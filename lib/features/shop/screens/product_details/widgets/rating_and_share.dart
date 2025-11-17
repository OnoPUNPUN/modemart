import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/utils/constants/size.dart';

class AppRatingAndShare extends StatelessWidget {
  const AppRatingAndShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Rating
        Row(
          children: [
            Icon(Iconsax.star_1_copy, color: Colors.amber, size: 24),
            SizedBox(width: AppSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "5.0 ",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const TextSpan(text: '(200)'),
                ],
              ),
            ),
          ],
        ),
        // Share Button
        IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.share_copy, size: AppSizes.iconMd),
        ),
      ],
    );
  }
}
