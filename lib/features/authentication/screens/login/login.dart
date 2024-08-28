import 'package:cris_app/common/styles/spacing_styles.dart';
import 'package:cris_app/common/widgets/login/form_divider.dart';
import 'package:cris_app/common/widgets/login/social_buttons.dart';
import 'package:cris_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:cris_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:cris_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const TLoginHeader(),
              const TLoginForm(),
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
              const TSocialsButtons()
            ],
          ),
        ),
      ),
    );
  }
}




