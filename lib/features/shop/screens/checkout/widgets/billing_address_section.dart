import 'package:cris_app/common/widgets/texts/section_heading.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: 'Endereço de Entrega',
          buttonTitle: 'Mudar',
          onPressed: () {},
        ),
        Text(
          'Cris Laços',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Row(
          children: [
            const Icon(
                Icons.phone,
                color: Colors.grey,
                size: 16,
            ),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text(
              '(21) 99999-9999',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems / 2,),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text(
              'Rua Centro, nº100',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        )
      ],
    );
  }
}

