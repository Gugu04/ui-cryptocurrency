import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_cryptocurrency/src/core/constants/constats.dart';

class CopyW extends StatelessWidget {
  final String text;
  final int? maxLines;
  final bool? optionRight;
  final TextStyle? style;
  const CopyW(
      {Key? key,
      required this.text,
      this.optionRight = true,
      this.maxLines = 1,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (!optionRight!) ...[
            SvgPicture.asset(
              AppAssets.copy,
              height: 20,
              color: AppColors.blue2,
            ),
            const SizedBox(
              width: 20,
            )
          ],
          Flexible(
            child: Text(
              text,
              maxLines: maxLines,
              style: style ??
                  Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          if (optionRight!) ...[
            const SizedBox(
              width: 20,
            ),
            SvgPicture.asset(
              AppAssets.copy,
              height: 20,
              color: AppColors.blue2,
            )
          ]
        ],
      ),
    );
  }
}
