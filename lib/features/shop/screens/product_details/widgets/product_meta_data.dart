import 'package:cris_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:cris_app/common/widgets/images/t_circular_image.dart';
import 'package:cris_app/common/widgets/texts/product_price_text.dart';
import 'package:cris_app/common/widgets/texts/product_title_text.dart';
import 'package:cris_app/common/widgets/texts/t_brand_title_with_verification.dart';
import 'package:cris_app/utils/constants/colors.dart';
import 'package:cris_app/utils/constants/enums.dart';
import 'package:cris_app/utils/constants/image_strings.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:cris_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: TSizes.sm,
                vertical: TSizes.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              'R\$ 25,00',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            const TProductPriceText(price: 'R\$ 20,00'),
            const SizedBox(
              width: TSizes.spaceBtwItems / 1.5,
            ),
            const TProductTitleText(
              title: 'Laço nº 1',
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems / 1.5,
            )
          ],
        ),
        Row(
          children: [
            const TProductTitleText(
              title: 'Status',
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              'Em Estoque',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems / 1.5,
        ),
        Row(
          children: [
            TCircularImage(
              image: TImages.laceIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            const TBrandTitleWithVerification(
              title: 'CrisLaços',
              brandTextSizes: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
