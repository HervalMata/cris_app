import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:crisapp/common/widgets/images/t_circular_image.dart';
import 'package:crisapp/utils/constants/colors.dart';
import 'package:crisapp/utils/constants/sizes.dart';

class TUserProfileTile extends StatelessWidget {
const TUserProfileTile({ super.key });

  @override
  Widget build(BuildContext context){
    return ListTile(
        leading: TCircularImage(
            image: TImages.user,
            width: 50,
            height: 50,
            padding: 0,
        ),
        title: Text(
            'CrisLaços',
            style: Theme.of(context).textTheme.headLineMedium!.apply(color: TColors.white),
        ),
        subtitle: Text(
            'support@crislacos.com',
            style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
                Iconsax.edit,
                color: TColors.white,
            ),
        ),
    );
  }
}