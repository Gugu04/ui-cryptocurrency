import 'package:flutter/material.dart';
import 'package:ui_cryptocurrency/src/api/data/data.dart';
import 'package:ui_cryptocurrency/src/core/constants/app_theme.dart';
import 'package:ui_cryptocurrency/src/core/constants/constats.dart';
import 'package:ui_cryptocurrency/src/ui/components/app_bar_modal_w.dart';
import 'package:ui_cryptocurrency/src/ui/components/card_ui.dart';
import 'package:ui_cryptocurrency/src/ui/views/coinDetails/widgets/details_w.dart';
import 'package:ui_cryptocurrency/src/ui/views/coinDetails/widgets/movements_w.dart';

class CoinDetailsView extends StatelessWidget {
  final Coin coin;

  const CoinDetailsView({Key? key, required this.coin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: AppTheme.sweepGradient,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 5, bottom: 10),
            width: 60,
            height: 5,
            decoration: BoxDecoration(
                color: AppColors.grey, borderRadius: BorderRadius.circular(30)),
          ),
          AppBarModalW(title: coin.title),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  DetailsW(coin: coin),
                  const SizedBox(
                    height: 16,
                  ),
                  CardUi(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    paddingCircle: const EdgeInsets.only(right: 8),
                    color: AppColors.write,
                    circleIconFillColor: coin.fillColor,
                    circleIcon: coin.icon,
                    circleIconColorSize: coin.iconSize,
                    circleIconPadding: 12,
                    title: coin.title,
                    percentage:
                        '${coin.increase ? '+' : '-'}${coin.percentage}%',
                    percentageColor:
                        coin.increase ? AppColors.green3 : AppColors.pink,
                    tag: '\u0020- ${coin.tag}',
                    amount: false,
                    lineChart: true,
                    lineChartIcon: coin.increase
                        ? AppAssets.lineChartPlus
                        : AppAssets.lineChartLess,
                    lineChartIconColor:
                        coin.increase ? AppColors.green : AppColors.pink,
                    lineChartPaddingLeft: 25,
                    iconRight: true,
                    iconDataRight: Icons.arrow_forward,
                    iconDataRightColor: AppColors.black2,
                    iconDataRightSize: 30,
                  ),
                  MovementsW(coin: coin)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
