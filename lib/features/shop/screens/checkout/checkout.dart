import 'package:cris_app/common/widgets/appbar/appbar.dart';
import 'package:cris_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:cris_app/common/widgets/login/success_screen.dart';
import 'package:cris_app/common/widgets/products/cart/coupon_widget.dart';
import 'package:cris_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:cris_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:cris_app/navigation_menu.dart';
import 'package:cris_app/utils/constants/colors.dart';
import 'package:cris_app/utils/constants/image_strings.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:cris_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/billing_amount_section.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Ordem de Compra',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TCartItems(
                  showAddRemoveButtons: false,
                ),
                const SizedBox(height: TSizes.spaceBtwSections,),
                const TCouponCode(),
                const SizedBox(height: TSizes.spaceBtwSections,),
                TRoundedContainer(
                  showBorder: true,
                  padding: const EdgeInsets.all(TSizes.md),
                  backgroundColor: dark ? TColors.black : TColors.white,
                  child: const Column(
                    children: [
                      TBillingAmountSection(),
                      SizedBox(height: TSizes.spaceBtwItems,),
                      Divider(),
                      SizedBox(height: TSizes.spaceBtwItems,),
                      TBillingPaymentSection(),
                      SizedBox(height: TSizes.spaceBtwItems,),
                    ],
                  ),
                )
              ],
            ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.offAll(() => SuccessScreen(
              image: TImages.successPaymentIcon,
              title: 'Sucesso',
              subTitle: 'Pagamento Finalizado com sucesso',
              onPressed: () => Get.offAll(() => const NavigationMenu()))),
          child: const Text(
            'Pagamento R\$ 25,60',
          ),
        ),
      ),
    );
  }
}
