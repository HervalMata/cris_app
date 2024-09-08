import 'package:cris_app/common/widgets/appbar/appbar.dart';
import 'package:cris_app/common/widgets/appbar/tabBar.dart';
import 'package:cris_app/common/widgets/brands/brand_show_case.dart';
import 'package:cris_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:cris_app/common/widgets/layouts/grid_layout.dart';
import 'package:cris_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:cris_app/common/widgets/texts/section_heading.dart';
import 'package:cris_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:cris_app/utils/constants/colors.dart';
import 'package:cris_app/utils/constants/image_strings.dart';
import 'package:cris_app/utils/constants/sizes.dart';
import 'package:cris_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/brands/brand_card.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
              'Loja',
              style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
                onPressed: () {},
                iconColor: TColors.primary,
            ),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                      padding: const EdgeInsets.all(TSizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const SizedBox(height: TSizes.spaceBtwItems,),
                          const TSearchContainer(
                            text: "Procurar na Loja",
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(height: TSizes.spaceBtwSections,),
                          TSectionHeading(
                            title: "Produtos Mais Vendidos",
                            onPressed: () {},
                          ),
                          const SizedBox(height: TSizes.spaceBtwItems / 1.5,),
                          TGridLayout(
                              itemCount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (_, index) {
                                return const TBrandCard(
                                  showBorder: false,
                                );
                              }
                          ),
                        ],
                      ),
                  ),
                  bottom: const TTabBar(
                      tabs: [
                        Tab(
                          child: Text('Laços'),
                        ),
                        Tab(
                          child: Text('Tiaras'),
                        ),
                        Tab(
                          child: Text('Viseiras'),
                        ),
                        Tab(
                          child: Text('Faixas'),
                        ),
                      ]
                  ),
                )
              ];
            }, 
            body: const TabBarView(
                children: [
                  TCategoryTab(),
                  TCategoryTab(),
                  TCategoryTab(),
                  TCategoryTab(),
                ],
            ),
        ),
      ),
    );
  }
}
