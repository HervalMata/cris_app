import 'package:cris_app/common/widgets/loaders/loaders.dart';
import 'package:cris_app/data/repositories/authentication/authentication_repository.dart';
import 'package:cris_app/data/repositories/user/user_repository.dart';
import 'package:cris_app/features/authentication/screens/signup/verify_email.dart';
import 'package:cris_app/features/personalization/models/user_model.dart';
import 'package:cris_app/utils/constants/image_strings.dart';
import 'package:cris_app/utils/helpers/network_manager.dart';
import 'package:cris_app/utils/popups/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signup() async {
    try {
      TFullScreenLoader.openLoadingDialog('Nós estamos processando suas informações...', TImages.decorAnimation);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;
      if (!signupFormKey.currentState!.validate()) return;
      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(
            title: 'Aceitar Politicas de Privacidade',
            message: 'Para criar uma conta, você tem que ler e aceitar as politicas de privacidade e termos de uso.'
        );
      }
      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(
          email.text.trim(),
          password.text.trim(),
      );
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );
      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);
      TLoaders.successSnackBar(
          title: 'Felicitações',
          message: 'Sua conta foi criada! verifique seu email para continuar',
      );
      Get.to(() => const VerifyEmailScreen());
    } catch (e) {
      TLoaders.errorSnackBar(title: "On Snap!", message: e.toString());
    } finally {
      TFullScreenLoader.stopLoading();
    }
  }
}