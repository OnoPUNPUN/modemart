import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/features/authentication/controllers/signup/signup_controller.dart';
import 'package:modemart/features/authentication/screens/signup/screens/verify_email.dart';
import 'package:modemart/utils/validators/validators.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'app_trems_condition.dart';

class AppSignUpForm extends StatelessWidget {
  const AppSignUpForm({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      AppVaildator.validateEmptyText('First Name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppTextStrings.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      AppVaildator.validateEmptyText('Last Name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppTextStrings.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwInputFields),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          // Username
          TextFormField(
            controller: controller.userName,
            validator: (value) =>
                AppVaildator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: AppTextStrings.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          // Email
          TextFormField(
            controller: controller.email,
            validator: (value) => AppVaildator.validateEmail(value),
            expands: false,
            decoration: const InputDecoration(
              labelText: AppTextStrings.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          // Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => AppVaildator.validatePhoneNumber(value),
            expands: false,
            decoration: const InputDecoration(
              labelText: AppTextStrings.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          // Password
          TextFormField(
            controller: controller.passwrod,
            obscureText: true,
            validator: (value) => AppVaildator.validatePassword(value),
            decoration: const InputDecoration(
              labelText: AppTextStrings.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          const SizedBox(height: AppSizes.spaceBtwSections),

          // Trems & Condition
          AppTremsCondition(isDark: isDark),
          const SizedBox(height: AppSizes.spaceBtwSections),

          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signUp(),
              child: const Text(AppTextStrings.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
