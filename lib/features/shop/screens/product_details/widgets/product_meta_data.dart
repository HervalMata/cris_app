class TProductMetaData extends StatelessWidget {
const TProductMetaData({ super.key });

  @override
  Widget build(BuildContext context){
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        childern: [
            Row(
                TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,,
                        vertical: TSizes.xs,
                    ),
                    child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),
                    ),
                ),
                const SizedBox(
                    width: TSizes.spaceBtwItems,
                ),
                Text(
                    'R\$ 25,00',
                    style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                ),
                const SizedBox(
                    width: TSizes.spaceBtwItems,
                ),
                TProductPriceText(
                    price: 'R\$ 20,00'
                ),
                const SizedBox(
                    width: TSizes.spaceBtwItems / 1.5,
                ),
                const TProductTitleText(
                    title: 'Laço nº 1',
                ),
                const SizedBox(
                    width: TSizes.spaceBtwItems / 1.5,
                ),
                Row(
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
                            brandTextSize: TextSizes.medium,
                        ),
                    ],
                ),
                
            ),
        ],
    );
  }
}