import 'package:cris_app/common/styles/shadows.dart';
import 'package:cris_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:cris_app/common/widgets/icons/t_circular_icon.dart';
import 'package:cris_app/common/widgets/images/t_rounded_image.dart';
import 'package:cris_app/common/widgets/texts/product_price_text.dart';
import 'package:cris_app/common/widgets/texts/product_title_text.dart';
import 'package:cris_app/common/widgets/texts/t_brand_title_with_verification.dart';
import 'package:cris_app/utils/constants/colors.dart';
import 'package:cris_app/utils/constants/image_strings.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:cris_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:cris_app/features/shop/screens/product_details/product_detail.dart';


class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.light,
        ),
        child: Column(
          children: [
            TRoundedContainer(
              height: 170,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.white,
              child: Stack(
                children: [
                  const TRoundedImage(
                      imageUrl: TImages.productImage1,
                      applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: TSizes.xs,
                      ),
                      child: Text(
                        "25%",
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                          color: TColors.black,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2,),
            Padding(
                padding: const EdgeInsets.only(left: TSizes.md),
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TProductTitleText(
                        title: "Laço Nº1",
                        smallSize: true,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems / 2,),
                    const TBrandTitleWithVerification(
                      title: "CrisLaços",
                    ),
                    //const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(TSizes.sm),
                          child: TProductPriceText(
                            price: '25,00',
                            isLarge: true,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight: Radius.circular(TSizes.productImageRadius),
                            ),
                          ),
                          child: const SizedBox(
                            width: TSizes.iconLg * 1.2,
                            height:  TSizes.iconLg * 1.2,
                            child: Center(
                              child: Icon(
                                Iconsax.add,
                                color: TColors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
