import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../features/shop/screens/home/home.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const Home(),
    Container(color: Colors.red),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
  ];
}
