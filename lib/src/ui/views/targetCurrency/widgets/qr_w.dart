import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_cryptocurrency/src/core/constants/constats.dart';
import 'package:ui_cryptocurrency/src/ui/components/circle_icon.dart';

// Qr Widget
class QrW extends StatelessWidget {
  const QrW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          AppAssets.qr,
          height: MediaQuery.of(context).size.height * 0.27,
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: CircleIcon(
              fillColor: AppColors.blue,
              iconAssets: AppAssets.broxel,
              iconColor: AppColors.write,
              iconSize: 35,
              padding: 18,
            ),
          ),
        ),
      ],
    );
  }
}
