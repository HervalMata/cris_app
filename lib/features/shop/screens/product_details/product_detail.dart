import 'package:cris_app/common/widgets/texts/section_heading.dart';
import 'package:cris_app/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:cris_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:cris_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:cris_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:cris_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(children: [
          const TProductImageSlider(),
          Padding(
            padding: const EdgeInsets.only(
              right: TSizes.defaultSpace,
              left: TSizes.defaultSpace,
              bottom: TSizes.defaultSpace,
            ),
            child: Column(
              children: [
                const TRatingAndShare(),
                const TProductMetaData(),
                const TProductAttributes(),
                const SizedBox(height: TSizes.spaceBtwSections,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Pagamento',
                      )
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                const TSectionHeading(
                    title: 'Descrição',
                  showActionButton: false,
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                const ReadMoreText(
                  "Esta é a descrição do produto e como pode atualizar para o máximo de 4 linhas",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: " Mostrar mais",
                  trimExpandedText: " Menos",
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TSectionHeading(
                        title: "Avaliações (199)",
                        showActionButton: false,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                            Iconsax.arrow_right_3,
                            size: 18,
                        )
                    )
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwSections,),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
