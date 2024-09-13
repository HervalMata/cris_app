import 'package:cris_app/common/widgets/appbar/appbar.dart';
import 'package:cris_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:cris_app/common/widgets/products/cart/cart_item.dart';
import 'package:cris_app/common/widgets/texts/product_price_text.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
            'Carrinho',
            style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 4,
                separatorBuilder: (_, __) => const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                itemBuilder: (_, index) => const Column(
                  children: [
                    TCartItem(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Row(
                            children: [
                              SizedBox(width: 70,),
                              TProductQuantityWithAddRemoveButton(),
                            ],
                          ),
                        TProductPriceText(price: '25,60'),
                        ],
                    ),
                  ],
                ),
              ),
          ),
        ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Pagamento R\$ 25,60',
              ),
          ),
      ),
    );
  }
}
