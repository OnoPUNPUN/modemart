import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/common/widgets/appbar.dart';
import 'package:modemart/features/shop/screens/address/add_new_address.dart';
import 'package:modemart/features/shop/screens/address/widgets/single_address.dart';
import 'package:modemart/utils/constants/colors.dart';
import 'package:modemart/utils/constants/size.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () => Get.to(() => const AddNewAddress()),
        child: const Icon(Iconsax.add_copy, color: AppColors.white),
      ),
      appBar: Appbar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(selectedAddress: true),
              SingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
