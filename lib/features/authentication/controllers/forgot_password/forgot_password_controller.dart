import 'package:cris_app/common/widgets/loaders/loaders.dart';
import 'package:cris_app/data/repositories/authentication/authentication_repository.dart';
import 'package:cris_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:cris_app/utils/constants/image_strings.dart';
import 'package:cris_app/utils/helpers/network_manager.dart';
import 'package:cris_app/utils/popups/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  static ForgotPasswordController get instance => Get.find();

  final email = TextEditingController();
  GlobalKey<FormState> forgotPasswordFormKey = GlobalKey<FormState>();

  sendPasswordResetEmail() async {
    try {
      TFullScreenLoader.openLoadingDialog('Processando sua requisição...', TImages.decorAnimation);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
      if (!forgotPasswordFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }
      await AuthenticationRepository.instance.sendPasswordResetEmail(email.text.trim());
      TFullScreenLoader.stopLoading();
      TLoaders.successSnackBar(
          title: 'Email enviado',
          message: 'Enviado link pro seu email para resetar sua senha'.tr,
      );
      Get.to(() => ResetPasswordScreen(email: email.text.trim()));
    } catch (e) {
      TLoaders.errorSnackBar(
        title: 'oH Snap!',
        message: e.toString(),
      );
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      TFullScreenLoader.openLoadingDialog('Processando sua requisição...', TImages.decorAnimation);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);
      TFullScreenLoader.stopLoading();
      TLoaders.successSnackBar(
        title: 'Email enviado',
        message: 'Enviado link pro seu email para resetar sua senha'.tr,
      );
    } catch (e) {
      TLoaders.errorSnackBar(
        title: 'oH Snap!',
        message: e.toString(),
      );
    }
  }
}