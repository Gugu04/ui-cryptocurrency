import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_cryptocurrency/src/api/data/data.dart';
import 'package:ui_cryptocurrency/src/core/constants/constats.dart';
import 'package:ui_cryptocurrency/src/ui/components/card_ui.dart';
import 'package:ui_cryptocurrency/src/ui/components/transfer_options.dart';
import 'package:ui_cryptocurrency/src/ui/views/targetCurrency/widgets/copy_w.dart';

class DetailsW extends StatelessWidget {
  final Coin coin;
  const DetailsW({Key? key, required this.coin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.write,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Detalles',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'Editar',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: AppColors.blue2, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CardUi(
            paddingCircle: const EdgeInsets.only(right: 8),
            color: AppColors.write,
            circleIconFillColor: coin.fillColor,
            circleIcon: coin.icon,
            circleIconColorSize: coin.iconSize,
            circleIconPadding: 12,
            title: coin.title,
            percentage: '${coin.increase ? '+' : '-'}${coin.percentage}%',
            percentageColor: coin.increase ? AppColors.green3 : AppColors.pink,
            tag: '\u0020- ${coin.tag}',
            amountTitle: '${coin.amount} ${coin.acronym}',
            amountTag: '${coin.price} MXN',
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 17),
            child: Divider(
              height: 2,
            ),
          ),
          Text(
            "DIRECCIÓN DE CARGA",
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              CopyW(
                text: 'THHnDM7u37ZjG4awPWFSkwthRezNVgTFx',
                maxLines: 2,
                optionRight: false,
                style: Theme.of(context).textTheme.caption!.copyWith(),
              ),
              const SizedBox(
                width: 80,
              ),
              SvgPicture.asset(
                AppAssets.copyQr,
                height: 30,
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const TransferOptions()
        ],
      ),
    );
  }
}
