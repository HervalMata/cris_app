import 'package:cris_app/common/widgets/appbar/appbar.dart';
import 'package:cris_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:cris_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:cris_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Avaliações e Favoritos'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Favoritos e Avaliações são verificados, e são de pessoas que usam o mesmo tipo de aparelho que você usa."
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                const TOverallProductRating(),
                const TRatingBarIndicator(
                  rating: 3.5,
                ),
                Text(
                  '12.611',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: TSizes.spaceBtwSections,),
                const UserReviewCard(),
                const UserReviewCard(),
                const UserReviewCard(),
                const UserReviewCard(),
              ],
            ),
        ),
      ),
    );
  }
}
