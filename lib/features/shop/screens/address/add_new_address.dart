import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/common/widgets/appbar.dart';
import 'package:modemart/utils/constants/size.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(title: Text('Add New Address'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: 'Name',
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile),
                    labelText: 'Phone Number',
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building_3),
                          labelText: 'Street',
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.code),
                          labelText: 'Postal Code',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          labelText: 'Street',
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.activity),
                          labelText: 'Postal Code',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.global),
                    labelText: 'Country',
                  ),
                ),
                const SizedBox(height: AppSizes.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {}, child: Text('Save')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
