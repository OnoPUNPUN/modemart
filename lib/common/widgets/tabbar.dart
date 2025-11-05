import 'package:flutter/material.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/device/device_utility.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

class AppTabBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Material(
      color: isDark ? AppColors.black : AppColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: AppColors.primary,
        labelColor: isDark ? AppColors.white : AppColors.primary,
        unselectedLabelColor: AppColors.darkGrey,
        tabAlignment: TabAlignment.start,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.getAppBarHeight());
}
