import 'package:cris_app/common/widgets/loaders/loaders.dart';
import 'package:cris_app/data/repositories/categories/category_repository.dart';
import 'package:cris_app/features/shop/models/category_model.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  final isLoading = false.obs;
  final _categoryRepository = Get.put(CategoryRepository());
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;
  
  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  void fetchCategories() async {
    try {
      isLoading.value = true;
      final categories = await _categoryRepository.getAllCategories();
      allCategories.assignAll(categories);
      featuredCategories.assignAll(
          allCategories.where((category) =>
          category.isFeatured && category.parentId.isEmpty).take(0).toList());
    } catch (e) {
      TLoaders.errorSnackBar(
          title: 'Oh Snap!',
          message: e.toString(),
      );
    } finally {
      isLoading.value = false;
    }
  }
}