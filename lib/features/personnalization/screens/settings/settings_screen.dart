import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/common/custom_shapes/containers/app_primary_header_container.dart';
import 'package:modemart/common/texts/app_section_heading.dart';
import 'package:modemart/common/widgets/appbar.dart';
import 'package:modemart/features/shop/screens/profile/profile.dart';
import 'package:modemart/utils/constants/size.dart';

import '../../../../common/list_tile/app_user_profile_tile.dart';
import '../../../../common/list_tile/settings_menu_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Header
            AppPrimaryHeaderContainer(
              child: Column(
                children: [
                  // App Bar
                  Appbar(
                    title: Text(
                      "Account",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  // User Profile Card
                  AppUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen()),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),
            // Body
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  AppSectionHeading(
                    title: "Account Settings",
                    showActionButton: false,
                  ),
                  // Account Settings
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  SettingsMenuTile(
                    icon: Iconsax.safe_home_copy,
                    title: "My Address",
                    subtitle: "Set Shopping devlivery address",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.shopping_cart_copy,
                    title: "My Cart",
                    subtitle: "Add, remove and manage items",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bag_tick_copy,
                    title: "My Orders",
                    subtitle: "In-progress and past orders",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bank_copy,
                    title: "Bank Account",
                    subtitle: "Widthdraw balance to registered bank",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.discount_shape_copy,
                    title: "My Coupons",
                    subtitle: "List of all discount coupons",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.notification_copy,
                    title: "Notifications",
                    subtitle: "Receive notifications",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_card_copy,
                    title: "My Address",
                    subtitle: "Account Privacy and Security",
                    onTap: () {},
                  ),

                  // App Settings
                  SizedBox(height: AppSizes.spaceBtwSections),
                  AppSectionHeading(
                    title: "App Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  SettingsMenuTile(
                    icon: Iconsax.document_upload_copy,
                    title: "Load Data",
                    subtitle: "Upload Data to Your Colud Account",
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.location_copy,
                    title: "Geo Location",
                    subtitle: "Set Location based on your need",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_user_copy,
                    title: "Safe Mode",
                    subtitle: "Search results is safe for all age",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.image,
                    title: "HD Quility",
                    subtitle: "Set image quality to be seen",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  // logout Button
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Logout"),
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
