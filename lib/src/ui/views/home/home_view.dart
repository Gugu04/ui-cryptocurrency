import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_cryptocurrency/src/api/data/data.dart';
import 'package:ui_cryptocurrency/src/core/constants/app_assets.dart';
import 'package:ui_cryptocurrency/src/core/constants/app_colors.dart';
import 'package:ui_cryptocurrency/src/ui/components/card_ui.dart';
import 'package:ui_cryptocurrency/src/ui/views/coinDetails/coin_details_view.dart';
import 'package:ui_cryptocurrency/src/ui/views/home/widgets/account_w.dart';
import 'package:ui_cryptocurrency/src/ui/components/circle_icon.dart';
import 'package:ui_cryptocurrency/src/ui/components/navigation_bar_ui.dart';
import 'package:ui_cryptocurrency/src/utils/utils.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            const AccountW(),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Container(
                  color: AppColors.write,
                  padding: const EdgeInsets.all(13),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Monedas",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              const CircleIcon(
                                fillColor: AppColors.blue2,
                                icon: Icons.add,
                                iconColor: AppColors.write,
                                iconSize: 20,
                                padding: 1,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Agregar",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(color: AppColors.blue2),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ...coins
                          .map((item) => Padding(
                                padding: const EdgeInsets.only(bottom: 18),
                                child: GestureDetector(
                                  child: Column(
                                    children: [
                                      CardUi(
                                        color: AppColors.write,
                                        circleIconFillColor: item.fillColor,
                                        circleIcon: item.icon,
                                        circleIconColor: item.iconColor,
                                        circleIconColorSize: item.iconSize,
                                        circleIconPadding: 12,
                                        title: item.title,
                                        percentage:
                                            '${item.increase ? '+' : '-'}${item.percentage}%',
                                        percentageColor: item.increase
                                            ? AppColors.green3
                                            : AppColors.pink,
                                        tag: '\u0020- ${item.tag}',
                                        lineChart: true,
                                        lineChartIcon: item.increase
                                            ? AppAssets.lineChartPlus
                                            : AppAssets.lineChartLess,
                                        lineChartIconColor: item.increase
                                            ? AppColors.green
                                            : AppColors.pink,
                                        lineChartPaddingRight: 25,
                                        amount: true,
                                        amountTitle:
                                            '${item.amount} ${item.acronym}',
                                        amountTag:
                                            '${item.price} ${item.typeCoin}',
                                      ),
                                    ],
                                  ),
                                  onTap: () => Utils.showModal(context, 0.94,
                                      CoinDetailsView(coin: item)),
                                ),
                              ))
                          .toList()
                    ],
                  ),
                ),
              ),
            )
          ],
        )),
        bottomNavigationBar: const NavigationBarUi());
  }
}
