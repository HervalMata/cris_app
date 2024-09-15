import 'package:cris_app/common/widgets/appbar/appbar.dart';
import 'package:cris_app/common/widgets/images/t_rounded_image.dart';
import 'package:cris_app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:cris_app/common/widgets/texts/section_heading.dart';
import 'package:cris_app/utils/constants/image_strings.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Laços'),
        showBackArrow: true,  
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TRoundedImage(
                    width: double.infinity,
                    imageUrl: TImages.promoBanner2,
                    applyImageRadius: true,
                ),
                const SizedBox(height: TSizes.spaceBtwSections,),
                Column(
                  children: [
                    TSectionHeading(
                        title: 'Lacos Fofos',
                        onPressed: () {},
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems / 2,),
                    SizedBox(
                      height: 120,
                      child: ListView.separated(
                          shrinkWrap: true,
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems,),
                          itemBuilder: (context, index) => const TProductCardHorizontal()),
                    ),
                  ],
                )
              ],
            ),
        ),
      ),
    );
  }
}
