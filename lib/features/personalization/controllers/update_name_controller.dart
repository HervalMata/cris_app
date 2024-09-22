import 'package:cris_app/common/widgets/loaders/loaders.dart';
import 'package:cris_app/data/repositories/user/user_repository.dart';
import 'package:cris_app/features/personalization/controllers/user_controller.dart';
import 'package:cris_app/features/personalization/screens/profile/profile.dart';
import 'package:cris_app/utils/constants/image_strings.dart';
import 'package:cris_app/utils/helpers/network_manager.dart';
import 'package:cris_app/utils/popups/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();
  
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();
  
  @override
  void onInit() {
    initializeNames();
    super.onInit();
  }

  Future<void> initializeNames() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }
  
  Future<void> updateUserName() async {
    try {
      TFullScreenLoader.openLoadingDialog('Nós estamos atualizando suas informações...', TImages.decorAnimation);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
      if (!updateUserNameFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }
      Map<String, dynamic> name = {
        'firstName': firstName.text.trim(),
        'lastName': lastName.text.trim(),
      };
      await userRepository.updateSingleField(name);
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();
      TFullScreenLoader.stopLoading();
      TLoaders.successSnackBar(
          title: 'Felicitações',
          message: 'Seu nome foi atualizado.',
      );
      Get.offAll(() => const ProfileScreen());
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(
        title: 'Oh Snap!',
        message: e.toString(),
      );
    }
  }
}