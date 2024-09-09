import 'package:cris_app/common/widgets/appbar/appbar.dart';
import 'package:cris_app/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:cris_app/features/personalization/screens/profile/profile.dart';
import 'package:cris_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:cris_app/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:cris_app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:cris_app/utils/constants/colors.dart';
import 'package:cris_app/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Conta',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  TUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen()),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(
                    title: "Configurações da Conta",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: "Meus Endereços",
                    subTitle: "Adicione seus endereços de entrega",
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "Meu Carrinho",
                    subTitle: "Adicione, remova produtos e vá para o pagamento",
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "Minhas Ordens",
                    subTitle: "Ordens Pendentes e Finalizadas",
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: "Dados Bancários",
                    subTitle: "Registre seus dados para pagamento",
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "Meus Cupons",
                    subTitle: "Lista de todos os cupons de desconto",
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: "Notificações",
                    subTitle:
                        "Acesse qualquer tipo de mensagem de notificações",
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: "Privacidade da Conta",
                    subTitle: "Gerencie uso de dados e contas",
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  const TSectionHeading(
                    title: "Configurações do App",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: "Dados de carregamento",
                    subTitle: "Carregue dados para nuvem",
                  ),
                  TSettingsMenuTile(
                      icon: Iconsax.location,
                      title: "Geolocalização",
                      subTitle:
                          "Receba recomendações baseadas na sua localização",
                      trailing: Switch(
                        value: true,
                        onChanged: (value) {},
                      )),
                  TSettingsMenuTile(
                      icon: Iconsax.security_user,
                      title: "Modo seguro",
                      subTitle: "Pesquise com segurança",
                      trailing: Switch(
                        value: false,
                        onChanged: (value) {},
                      )),
                  TSettingsMenuTile(
                      icon: Iconsax.location,
                      title: "Qualidade de Imagem HD",
                      subTitle: "Receba imagem com qualidade HD",
                      trailing: Switch(
                        value: false,
                        onChanged: (value) {},
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
