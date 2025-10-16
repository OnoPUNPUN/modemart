import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modemart/common/styles/spacing_style.dart';
import 'package:modemart/features/authentication/screens/login/widgets/app_login_form.dart';
import 'package:modemart/features/authentication/screens/login/widgets/app_login_header.dart';
import 'package:modemart/utils/constants/size.dart';
import 'package:modemart/utils/constants/text_strings.dart';
import 'package:modemart/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/app_form_divider.dart';
import '../../../../common/widgets/app_social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // logo, title & sub-title
              AppLoginHeader(isDark: isDark),

              // Form
              AppLoginForm(),
              // Divider
              AppFormDivider(
                isDark: isDark,
                dividerText: AppTextStrings.orSignInWith.capitalize!,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              // Footer
              AppSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
