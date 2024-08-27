import 'package:cris_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:cris_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtility.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: const Text('Pular'),
      ),
    );
  }
}