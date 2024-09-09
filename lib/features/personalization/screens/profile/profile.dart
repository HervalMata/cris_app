import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:cris_app/common/widgets/appbar/appbar.dart';
import 'package:cris_app/common/widgets/texts/section_heading.dart';
import 'package:cris_app/common/widgets/images/t_circular_image.dart';
import 'package:cris_app/features/personalization/screens/profile/widgets/profile_menu.dart';

import 'package:cris_app/utils/constants/image_strings.dart';
import 'package:cris_app/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
const ProfileScreen({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: const TAppBar(
            showBackArrow: true,
            title: Text(
                "Perfil"
            )
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                    children: [
                        SizedBox(
                            //padding: const EdgeInsets.all(TSizes.defaultSpace),
                            child: Column(
                                children: [
                                    const TCircularImage(
                                        image: TImages.user,
                                        width: 80,
                                        height: 80,
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                            'Troque a foto do perfil',
                                        ),
                                    ),
                                ],
                            ),
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems / 2,),
                        const Divider(),
                        const SizedBox(height: TSizes.spaceBtwItems,),
                        const TSectionHeading(
                            title: 'Informações do Perfil',
                            showActionButton: false,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems,),
                        TProfileMenu(
                            title: 'Nome',
                            value: 'CrisLaços',
                            onPressed: () {},
                        ),
                        TProfileMenu(
                            title: 'Usuário',
                            value: 'CrisLaços',
                            onPressed: () {},
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems,),
                        const Divider(),
                        const SizedBox(height: TSizes.spaceBtwItems,),
                        const TSectionHeading(
                            title: 'Informações Pessoais',
                            showActionButton: false,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems,),
                        TProfileMenu(
                            title: 'ID do Usuário',
                            value: '45689',
                            icon: Iconsax.copy,
                            onPressed: () {},
                        ),
                        TProfileMenu(
                            title: 'Email',
                            value: 'support@crislacos.com',
                            onPressed: () {},
                        ),
                        TProfileMenu(
                            title: 'Celular',
                            value: '(21) 99999-9999',
                            onPressed: () {},
                        ),
                        TProfileMenu(
                            title: 'Sexo',
                            value: 'Masculino',
                            onPressed: () {},
                        ),
                        TProfileMenu(
                            title: 'Data de Nascimento',
                            value: '01 Out, 1972',
                            onPressed: () {},
                        ),
                        const Divider(),
                        const SizedBox(height: TSizes.spaceBtwItems,),
                        Center(
                            child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                    'Encerrar Conta',
                                    style: TextStyle(
                                        color: Colors.red,
                                    ),
                                ),
                            ),
                        ),
                    ],
                ),
            ),
        ),
    );
  }
}