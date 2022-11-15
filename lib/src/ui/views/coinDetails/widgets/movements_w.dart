import 'package:flutter/material.dart';
import 'package:ui_cryptocurrency/src/api/data/data.dart';
import 'package:ui_cryptocurrency/src/core/constants/constats.dart';
import 'package:ui_cryptocurrency/src/ui/components/card_ui.dart';

class MovementsW extends StatelessWidget {
  final Coin coin;
  const MovementsW({Key? key, required this.coin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.write,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Movimientos',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'Ver todos',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: AppColors.blue2, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ...List.generate(3, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CardUi(
                color: AppColors.write,
                paddingCircle: const EdgeInsets.only(right: 7),
                circleIcon: coin.icon,
                circleIconColorSize: coin.iconSize,
                circleIconPadding: 12,
                circleIconFillColor: AppColors.grey8,
                title: 'Envio de ${coin.title}',
                tag: '20 de Octubre',
                amountTitle: '-0.0004 ${coin.acronym}',
                amountTag: 'Enviado',
                amountTagColor: AppColors.green,
              ),
            );
          })
        ],
      ),
    );
  }
}
