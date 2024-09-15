import 'package:cris_app/common/widgets/appbar/appbar.dart';
import 'package:cris_app/features/shop/screens/order/widgets/orders_list.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
            "Minhas Ordens",
            style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: TOrderListItems(),
      ),
    );
  }
}
