import 'package:cris_app/common/widgets/appbar/appbar.dart';
import 'package:cris_app/features/personalization/controllers/user_controller.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:cris_app/utils/constants/text_strings.dart';
import 'package:cris_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ReAuthUserLoginForm extends StatelessWidget {
  const ReAuthUserLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;

    return Scaffold(
      appBar: const TAppBar(
        title: Text(
          'Re Autenticar Usuário',
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            key: controller.reAuthFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: controller.verifyEmail,
                  validator: (value) => TValidator.validateEmail(value),

                  decoration: const InputDecoration(
                    labelText: TTexts.email,
                    prefixIcon: Icon(Iconsax.direct_right),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields,),
                Obx(
                  () => TextFormField(
                    controller: controller.verifyPassword,
                    validator: (value) => TValidator.validateEmptyText('Password', value),

                    decoration: InputDecoration(
                      labelText: TTexts.password,
                      prefixIcon: const Icon(Iconsax.password_check),
                      suffixIcon: IconButton(
                          onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                          icon: const Icon(Iconsax.eye_slash)
                      )
                    ),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwSections,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => controller.reAuthenticateEmailAndPasswordUser(),
                    child: const Text(
                        'Salvar'
                    ),
                  ),
                )
              ],
            ),
          ),

      ),
    );
  }
}
