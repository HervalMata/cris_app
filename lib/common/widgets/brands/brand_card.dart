import 'package:cris_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:cris_app/common/widgets/images/t_circular_image.dart';
import 'package:cris_app/common/widgets/texts/t_brand_title_with_verification.dart';
import 'package:cris_app/utils/constants/colors.dart';
import 'package:cris_app/utils/constants/enums.dart';
import 'package:cris_app/utils/constants/image_strings.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:cris_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: TCircularImage(
                isNetworkImage: false,
                image: TImages.laceIcon,
                backgroundColor: Colors.transparent,
                overlayColor: isDark  ? TColors.white : TColors.black,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2,),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerification(
                    title: "Laços",
                    brandTextSizes: TextSizes.large,
                  ),
                  Text(
                    "250 Produtos",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}