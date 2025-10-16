import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_strings.dart';

class AppLoginForm extends StatelessWidget {
  const AppLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: AppTextStrings.email,
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: AppTextStrings.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields / 2),

            // Remeber me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remeber me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(AppTextStrings.rememberMe),
                  ],
                ),

                // Forget Password
                TextButton(
                  onPressed: () {},
                  child: const Text(AppTextStrings.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            // Sign in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(AppTextStrings.signIn),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            // Create account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(AppTextStrings.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
