import 'package:cris_app/common/widgets/brands/brand_show_case.dart';
import 'package:cris_app/common/widgets/layouts/grid_layout.dart';
import 'package:cris_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:cris_app/common/widgets/texts/section_heading.dart';
import 'package:cris_app/features/shop/models/category_model.dart';
import 'package:cris_app/utils/constants/image_strings.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TBrandShowcase(
                images: [
                  TImages.productImage2,
                  TImages.productImage2,
                  TImages.productImage2,
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TSectionHeading(
                title: "Você deve gostar",
                onPressed: () {},
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TProductCardVertical()
              ),
              const SizedBox(height: TSizes.spaceBtwSections,),
            ],
          ),
        ),
      ]
    );
  }
}
