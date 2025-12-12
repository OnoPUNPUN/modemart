import 'package:flutter/material.dart';
import 'package:modemart/common/widgets/appbar.dart';
import 'package:modemart/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:modemart/utils/constants/size.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineLarge),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: CartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(onPressed: () {}, child: Text('Checkout ৳256.0')),
      ),
    );
  }
}
