class TProductlImageSlider extends StatelessWidget {
const TProductImageSlider({ super.key }));

  @override
  Widget build(BuildContext context){
    final dark = THelperFunctions.isDarkMode(context);
    
    return TCurvedEdgesWidget(
                    child: Container(
                        color: dark ? TColors.darkerGrey : TColors.light,
                        child: const Stack(
                            children: [
                                SizedBox(
                                    height: 400,
                                    child: Padding(
                                        padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                                        child: Center(
                                            child: Image(
                                                image: AssetImage(
                                                    TImages.productImage1,
                                                ),
                                            ),
                                        ),
                                    ),
                                ),
                                Positioned(
                                    right: 0,
                                    bottom: 30,
                                    left: TSizes.defaultSpace,
                                    child: SizedBox(
                                    height: 80,
                                    child: ListView.separeted(
                                            separetorBuilder: (_, __) => const SizedBox(
                                                width: TSizes.spaceBtwItems,
                                                itemCount: 6,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.horizontal,
                                                itemBuilder: (_, index) => TRoundedImage(
                                                    width: 80,
                                                    backgroundColor: dark ? TColors.dark : TColors.white,
                                                    border: Border.all(color: TColors.primary),
                                                    padding: const EdgeInsets.all(TSizes.sm),
                                                    imageUrl: TImages.productImage2,
                                                ),
                                            ),
                                        ),
                                    ),
                                ),
                                const TAppBar(
                                    showBackArrow: true,
                                    actions: [
                                        TCircularIcon(
                                            icon: Iconsax.heart5,
                                            color: Colors.red,
                                        ),
                                    ],
                                ),
                            ],
                        ),
                    ),
                );
  }
}