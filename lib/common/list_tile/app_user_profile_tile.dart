import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../widgets/app_circular_image.dart';

class AppUserProfileTile extends StatelessWidget {
  const AppUserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AppCircularImage(
        image: AppImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        "Tonmoy",
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: AppColors.white),
      ),
      subtitle: Text(
        "wasimul@gmail.com",
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: AppColors.white),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Iconsax.edit_copy, color: AppColors.white),
      ),
    );
  }
}
