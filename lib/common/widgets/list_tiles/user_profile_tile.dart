import 'package:cris_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:cris_app/common/widgets/images/t_circular_image.dart';
import 'package:cris_app/utils/constants/colors.dart';

class TUserProfileTile extends StatelessWidget {
const TUserProfileTile({
    super.key,
    required this.onPressed,
});

final VoidCallback onPressed;

  @override
  Widget build(BuildContext context){
    return ListTile(
        leading: const TCircularImage(
            image: TImages.user,
            width: 50,
            height: 50,
            padding: 0,
        ),
        title: Text(
            'CrisLaços',
            style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),
        ),
        subtitle: Text(
            'support@crislacos.com',
            style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),
        ),
        trailing: IconButton(
            onPressed: onPressed,
            icon: const Icon(
                Iconsax.edit,
                color: TColors.white,
            ),
        ),
    );
  }
}