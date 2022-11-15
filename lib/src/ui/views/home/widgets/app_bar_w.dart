import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_cryptocurrency/src/core/constants/constats.dart';

class AppBarW extends StatelessWidget {
  const AppBarW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(AppAssets.perfil),
        ),
        Row(
          children: [
            SvgPicture.asset(
              AppAssets.scannerQr,
              color: AppColors.black2,
              height: 22,
            ),
            const SizedBox(
              width: 20,
            ),
            SvgPicture.asset(
              AppAssets.notification,
              color: AppColors.black2,
              height: 22,
            ),
          ],
        )
      ],
    );
  }
}
