import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
const ProductDetailScreen({ super.key });

  @override
  Widget build(BuildContext context){

    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                TProductImageSlider(),
                Padding(
                    EdgeInsets.only(
                        right: TSizes.defaultSpace,
                        left: TSizes.defaultSpace,
                        bottom: TSizes.defaultSpace,
                    ),
                ),
                child: Column(
                    children: [
                        TRatingAndShare(),
                        TProductMetaData(),
                    ],
                ),
            ),
        ),
    );
  }
}