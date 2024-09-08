class TRatingAndShare extends StatelessWidget {
const TRatingAndShare({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
                            children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        const Icon(
                                            Iconsax.stars,
                                            color: Colors.ambar,
                                            size: 24,
                                        ),
                                        const SizedBox(
                                            width: TSizes.spaceBtwItems / 2,
                                        ),
                                        Text.rich(
                                            TextSpan(
                                                children: [
                                                    TextSpan(
                                                        text: '5.0',
                                                        style: Theme.of(context).textTheme.bodyLarge,
                                                    ),
                                                    const TextSpan(
                                                        text: '(199)',
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.share,
                                        size: TSizes.iconMd,
                                    ),
                                ),
                            ],
                        ),;
  }
}