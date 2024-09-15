import 'package:cris_app/common/widgets/appbar/appbar.dart';
import 'package:cris_app/common/widgets/layouts/grid_layout.dart';
import 'package:cris_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text(
          'Produtos Populares'
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                DropdownButtonFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.sort)
                    ),
                    items: [
                      "Laços",
                      "Viseiras",
                      "Tiaras",
                      "Faixas",
                    ].map((option) => DropdownMenuItem(
                        value: option,
                        child: Text(option)
                    )).toList(),
                    onChanged: (value) {},
                ),
                const SizedBox(height: TSizes.spaceBtwSections,),
                TGridLayout(
                    itemCount: 8,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                )
              ],
            ),
        ),
      ),
    );
  }
}
