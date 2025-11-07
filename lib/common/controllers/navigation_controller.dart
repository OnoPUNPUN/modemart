import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../features/shop/screens/home/home.dart';
import '../../features/shop/screens/store/store.dart';
import '../../features/shop/screens/wishlist/wish_list.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const Home(),
    const StoreScreen(),
    const WishList(),
    Container(color: Colors.yellow),
  ];
}
