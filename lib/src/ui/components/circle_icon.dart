import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleIcon extends StatelessWidget {
  final Color? fillColor;
  final double? padding;
  final String? iconAssets;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  const CircleIcon(
      {Key? key,
      required this.fillColor,
      this.padding = 10,
      this.iconAssets,
      this.iconColor,
      this.iconSize,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(padding!),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
        child: iconAssets != null
            ? SvgPicture.asset(
                iconAssets!,
                color: iconColor,
                height: iconSize,
              )
            : Icon(
                icon,
                color: iconColor,
                size: iconSize,
              ));
  }
}
