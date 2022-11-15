import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_cryptocurrency/src/core/constants/constats.dart';
import 'package:ui_cryptocurrency/src/ui/components/circle_icon.dart';

class CardUi extends StatelessWidget {
  final Color? color;
  final Color? circleIconFillColor;
  final String circleIcon;
  final Color? circleIconColor;
  final double circleIconColorSize;
  final double? circleIconPadding;
  final String title;
  final String? percentage;
  final Color? percentageColor;
  final String tag;
  final bool? lineChart;
  final String? lineChartIcon;
  final Color? lineChartIconColor;
  final double? lineChartIconSize;
  final double? lineChartPaddingLeft;
  final double? lineChartPaddingRight;
  final bool? amount;
  final String? amountTitle;
  final String? amountTag;
  final Color? amountTagColor;
  final bool? iconRight;
  final String? iconAssetsRight;
  final Color? iconAssetsRightColor;
  final double? iconAssetsRightSize;
  final EdgeInsetsGeometry? paddingCircle;
  final IconData? iconDataRight;
  final double? iconDataRightSize;
  final Color? iconDataRightColor;
  final EdgeInsetsGeometry? padding;
  const CardUi(
      {Key? key,
      this.color = AppColors.grey2,
      this.circleIconFillColor = AppColors.blue,
      required this.circleIcon,
      this.circleIconColor = AppColors.write,
      required this.circleIconColorSize,
      this.circleIconPadding = 15,
      required this.title,
      this.percentage,
      required this.tag,
      this.lineChart = false,
      this.lineChartIcon,
      this.lineChartIconColor = AppColors.green,
      this.amount = true,
      this.amountTitle,
      this.amountTag,
      this.iconRight = false,
      this.iconAssetsRight,
      this.iconAssetsRightColor,
      this.iconAssetsRightSize,
      this.percentageColor = AppColors.green,
      this.lineChartIconSize = 25,
      this.paddingCircle,
      this.iconDataRightSize,
      this.iconDataRightColor,
      this.iconDataRight,
      this.lineChartPaddingLeft,
      this.lineChartPaddingRight,
      this.amountTagColor,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Padding(
            padding: paddingCircle ?? const EdgeInsets.symmetric(horizontal: 8),
            child: CircleIcon(
                fillColor: circleIconFillColor,
                iconAssets: circleIcon,
                iconColor: circleIconColor,
                iconSize: circleIconColorSize,
                padding: circleIconPadding),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.subtitle1),
              Row(
                children: [
                  if (percentage != null) ...[
                    Text(
                      percentage!,
                      style: Theme.of(context).textTheme.caption!.copyWith(
                          color: percentageColor, fontWeight: FontWeight.bold),
                    ),
                  ],
                  Text(
                    tag,
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: AppColors.grey5, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (lineChart!) ...[
                  SizedBox(
                    width: lineChartPaddingLeft,
                  ),
                  SvgPicture.asset(
                    lineChartIcon ?? AppAssets.lineChartPlus,
                    height: lineChartIconSize,
                    color: lineChartIconColor,
                  ),
                  SizedBox(
                    width: lineChartPaddingRight,
                  ),
                ],
                if (amount!) ...[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        amountTitle!,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        amountTag!,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: amountTagColor ?? AppColors.grey5,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
                if (iconRight!) ...[
                  if (iconAssetsRight != null) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11),
                      child: SvgPicture.asset(
                        iconAssetsRight!,
                        color: iconAssetsRightColor,
                        height: iconAssetsRightSize,
                      ),
                    )
                  ] else ...[
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          iconDataRight,
                          size: iconDataRightSize,
                          color: iconDataRightColor,
                        ),
                      ),
                    )
                  ]
                ]
              ],
            ),
          )
        ],
      ),
    );
  }
}
