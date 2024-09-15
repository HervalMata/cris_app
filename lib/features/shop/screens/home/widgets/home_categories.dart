import 'package:cris_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:cris_app/features/shop/screens/sub_category/sub_categories.dart';
import 'package:cris_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TVerticalImageText(
              image: TImages.lace,
              title: "    Laços",
              onTap: () => Get.to(() => const SubCategoriesScreen()),
            );
          }
      ),
    );
  }
}