import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/utils/constants/colors.dart';

class AppRatingIndicator extends StatelessWidget {
  const AppRatingIndicator({super.key, required this.rating});
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      itemBuilder: (_, __) =>
          const Icon(Iconsax.magic_star, color: AppColors.primary),
    );
  }
}
