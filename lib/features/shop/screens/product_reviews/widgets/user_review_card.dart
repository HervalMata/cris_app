import 'package:cris_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:cris_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:cris_app/utils/constants/colors.dart';
import 'package:cris_app/utils/constants/image_strings.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:cris_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(
                      TImages.user,
                  ),
                ),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(
                onPressed: () {}, 
                icon: const Icon(Icons.more_vert)
            )
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text(
              '01 Nov, 2024',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        const ReadMoreText(
          'A interface do usuário do app está muita intuitiva. Eu tive capacidade para navegar e fazer compras sem problemas, Trabalho perfeito!',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' Mostrar menos',
          trimCollapsedText: ' Mostrar mais',
          moreStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Padding(
              padding: EdgeInsets.all(TSizes.md),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cris Laços",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '02 Nov, 2024',
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                    ],
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems,),
                  const ReadMoreText(
                    'A interface do usuário do app está muita intuitiva. Eu tive capacidade para navegar e fazer compras sem problemas, Trabalho perfeito!',
                    trimLines: 1,
                    trimMode: TrimMode.Line,
                    trimExpandedText: ' Mostrar menos',
                    trimCollapsedText: ' Mostrar mais',
                    moreStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary,
                    ),
                  ),
                ],
              ),
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwSections,),
      ],
    );
  }
}
