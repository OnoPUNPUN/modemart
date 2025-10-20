import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/constants/text_strings.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // Title
              Text(
                AppTextStrings.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              // Form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
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
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: AppTextStrings.username,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputFields),
                    // Email
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: AppTextStrings.email,
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputFields),
                    // Phone Number
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: AppTextStrings.phoneNo,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputFields),
                    // Password
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: AppTextStrings.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
