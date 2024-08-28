import 'package:cris_app/common/widgets/login/form_divider.dart';
import 'package:cris_app/common/widgets/login/social_buttons.dart';
import 'package:cris_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:cris_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const TSignupForm(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TFormDivider(dividerText: TTexts.orSignUPWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const TSocialsButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
