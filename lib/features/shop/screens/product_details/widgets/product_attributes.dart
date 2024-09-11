import 'package:cris_app/common/widgets/chips/choice_chip.dart';
import 'package:cris_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:cris_app/common/widgets/texts/product_price_text.dart';
import 'package:cris_app/common/widgets/texts/product_title_text.dart';
import 'package:cris_app/common/widgets/texts/section_heading.dart';
import 'package:cris_app/utils/constants/colors.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:cris_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(
                      title: "Variações",
                      showActionButton: false,
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: "Preço : ",
                            smallSize: true,
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems,),
                          Text(
                            'R\$ 25,00',
                            style: Theme.of(context).textTheme.titleSmall!.apply(
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems,),
                          const TProductPriceText(price: " 20,00"),
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(
                            title: "Estoque : ",
                            smallSize: true,
                          ),
                          Text(
                            "Em Estoque",
                              style: Theme.of(context).textTheme.titleMedium,
                          )
                        ]
                      ),
                    ],
                  ),
                ],
              ),
              const TProductTitleText(
                title: "Esta é a descrição do produto e como pode atualizar para o máximo de 4 linhas",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: "Cores",
              showActionButton: false,
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2,),
            Wrap(
              children: [
                TChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: "Tamanhos",
              showActionButton: false,
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 10,
              children: [
                TChoiceChip(
                  text: 'P',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'M',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'G',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),

          ],
        )
      ],
    );
  }
}
