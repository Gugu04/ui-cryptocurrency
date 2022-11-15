import 'package:flutter/material.dart';
import 'package:ui_cryptocurrency/src/core/constants/app_theme.dart';
import 'package:ui_cryptocurrency/src/core/constants/constats.dart';
import 'package:ui_cryptocurrency/src/ui/components/app_bar_modal_w.dart';
import 'package:ui_cryptocurrency/src/ui/components/card_ui.dart';
import 'package:ui_cryptocurrency/src/ui/views/targetCurrency/widgets/copy_w.dart';
import 'package:ui_cryptocurrency/src/ui/views/targetCurrency/widgets/qr_w.dart';

class TargetCurrencyView extends StatelessWidget {
  const TargetCurrencyView({Key? key}) : super(key: key);

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
          const AppBarModalW(title: 'Moneda destino'),
          const SizedBox(
            height: 10,
          ),
          CardUi(
              color: AppColors.write,
              padding: const EdgeInsets.only(right: 18),
              circleIcon: AppAssets.broxel,
              circleIconColorSize: 33,
              title: 'Broxels',
              percentage: '+0.56 %',
              amountTitle: '40 BXP',
              amountTag: '\$5,000 MXN',
              iconAssetsRight: AppAssets.downArrow,
              iconAssetsRightColor: AppColors.black.withOpacity(0.4),
              iconAssetsRightSize: 8,
              tag: '\u0020- Red broxels'),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.write,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Detalles',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Text(
                      'Comparte el codigo QR o la dirección para recibir dinero',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.caption!.copyWith(
                          color: AppColors.black2.withOpacity(0.7),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const QrW(),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Dirección de tu wallet',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const CopyW(text: 'THHnDMZ...sKWTHreZnvGtfX'),
                  Container(
                    margin: const EdgeInsets.only(top: 13, bottom: 5),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.blue2),
                    child: Center(
                      child: Text(
                        'Compartir wallet',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: AppColors.write,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
