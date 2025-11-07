import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modemart/common/widgets/app_form_divider.dart';
import 'package:modemart/common/widgets/app_social_button.dart';
import 'package:modemart/features/authentication/screens/signup/widgets/app_sign_up_form.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/constants/text_strings.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                AppTextStrings.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              // Form
              AppSignUpForm(isDark: isDark),
              const SizedBox(height: AppSizes.spaceBtwSections),
              // Divider
              AppFormDivider(
                dividerText: AppTextStrings.orSignInWith.capitalize!,
                isDark: isDark,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // Special Button
              const AppSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
