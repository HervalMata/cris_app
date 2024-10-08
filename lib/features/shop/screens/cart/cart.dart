import 'package:cris_app/common/widgets/appbar/appbar.dart';
import 'package:cris_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:cris_app/features/shop/screens/checkout/checkout.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({
    super.key,
  });

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
      body: const SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TCartItems(),
          ),
        ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ElevatedButton(
              onPressed: () => Get.to(() => const CheckoutScreen()),
              child: const Text(
                'Pagamento R\$ 25,60',
              ),
          ),
      ),
    );
  }
}
