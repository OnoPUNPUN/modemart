import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/features/authentication/password_configuration/reset_password.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(
              AppTextStrings.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(
              AppTextStrings.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections * 2),

            // Text field
            TextField(
              decoration: InputDecoration(
                labelText: AppTextStrings.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: const Text(AppTextStrings.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
