import 'package:cris_app/common/widgets/layouts/grid_layout.dart';
import 'package:cris_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}