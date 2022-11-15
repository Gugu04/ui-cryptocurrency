import 'package:flutter/material.dart';
import 'package:ui_cryptocurrency/src/core/constants/app_assets.dart';
import 'package:ui_cryptocurrency/src/core/constants/app_colors.dart';
import 'package:ui_cryptocurrency/src/ui/components/card_ui.dart';
import 'package:ui_cryptocurrency/src/ui/components/transfer_options.dart';
import 'package:ui_cryptocurrency/src/ui/views/home/widgets/app_bar_w.dart';
import 'package:ui_cryptocurrency/src/ui/views/targetCurrency/target_currency_view.dart';
import 'package:ui_cryptocurrency/src/utils/utils.dart';

class AccountW extends StatelessWidget {
  const AccountW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.write,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          const AppBarW(),
          Stack(
            children: [
              const Positioned.fill(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Divider(
                  height: 2,
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Tokens',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: AppColors.blue2),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 3),
                        width: 80,
                        height: 3,
                        decoration: BoxDecoration(
                            color: AppColors.blue2,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Text(
                        'Coleccionables',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Container(
                        width: 80,
                        height: 3,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'BALANCE TOTAL',
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: AppColors.grey, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '\$100,000.00 MXN',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: AppColors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
              child: CardUi(
                circleIcon: AppAssets.broxel,
                circleIconColorSize: 33,
                title: 'Broxels',
                percentage: '+0.56 %',
                amountTitle: '40 BXP',
                amountTag: '\$5,000 MXN',
                iconRight: true,
                iconAssetsRight: AppAssets.downArrow,
                iconAssetsRightColor: AppColors.black.withOpacity(0.4),
                iconAssetsRightSize: 8,
                tag: '\u0020- Red broxels',
              ),
              onTap: () =>
                  Utils.showModal(context, 0.81, const TargetCurrencyView())),
          const SizedBox(
            height: 20,
          ),
          const TransferOptions()
        ],
      ),
    );
  }
}
