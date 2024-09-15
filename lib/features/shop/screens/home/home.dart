import 'package:cris_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:cris_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:cris_app/common/widgets/layouts/grid_layout.dart';
import 'package:cris_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:cris_app/common/widgets/texts/section_heading.dart';
import 'package:cris_app/features/shop/screens/all_products/all_products.dart';
import 'package:cris_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:cris_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:cris_app/utils/constants/image_strings.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections,),
                  TSearchContainer(
                    text: 'Pesquisar na Loja',
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,),
                  Padding(
                      padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: "Categorias",
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems,),
                        THomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  TSectionHeading(
                      title: "Produtos Populares",
                      onPressed: () => Get.to(() => const AllProducts()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
