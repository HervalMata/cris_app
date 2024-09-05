import 'package:cris_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:cris_app/common/widgets/texts/section_heading.dart';
import 'package:cris_app/features/shop/screens/widgets/home_appbar.dart';
import 'package:cris_app/features/shop/screens/widgets/promo_slider.dart';
import 'package:cris_app/utils/constants/image_strings.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/custom_shapes/containers/search_container.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
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
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(
                banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3,
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
