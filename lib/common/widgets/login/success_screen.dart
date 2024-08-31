import 'package:cris_app/common/styles/spacing_styles.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:cris_app/utils/constants/text_strings.dart';
import 'package:cris_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight * 2,
            child: Column(
              children: [
                Image(image: AssetImage(image), width: THelperFunctions.screenWidth() * 0.6,),
                const SizedBox(height: TSizes.spaceBtwSections,),

                Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
                const SizedBox(height: TSizes.spaceBtwItems,),

                Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
                const SizedBox(height: TSizes.spaceBtwSections,),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed,
                      child: const Text(TTexts.tContinue)
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(TTexts.resendEmail)
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
