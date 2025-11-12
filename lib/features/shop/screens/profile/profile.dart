import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/common/texts/app_section_heading.dart';
import 'package:modemart/common/widgets/app_circular_image.dart';
import 'package:modemart/common/widgets/appbar.dart';
import 'package:modemart/features/shop/screens/profile/widgets/profile_menu.dart';
import 'package:modemart/utils/constants/image_strings.dart';
import 'package:modemart/utils/constants/size.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbar(showBackArrow: true, title: Text('Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Pic
              Column(
                children: [
                  AppCircularImage(
                    image: AppImages.user,
                    width: 90,
                    height: 90,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text("Change Profile Picture"),
                    ),
                  ),

                  // Details
                  const SizedBox(height: AppSizes.spaceBtwItems / 2),
                  const Divider(),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  AppSectionHeading(
                    title: "Profile Information",
                    showActionButton: false,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  ProfileMenu(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
