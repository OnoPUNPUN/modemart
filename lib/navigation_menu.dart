import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/features/shop/screens/home/home.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: isDark ? AppColors.black : Colors.white,
          indicatorColor: isDark
              ? AppColors.white.withOpacity(0.1)
              : AppColors.black.withOpacity(0.1),
          height: 70,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Shop"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Heart"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "User"),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const Home(),
    Container(color: Colors.red),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
  ];
}
