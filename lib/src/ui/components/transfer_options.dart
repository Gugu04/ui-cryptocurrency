import 'package:flutter/material.dart';
import 'package:ui_cryptocurrency/src/api/data/data.dart';
import 'package:ui_cryptocurrency/src/core/constants/constats.dart';
import 'package:ui_cryptocurrency/src/ui/components/circle_icon.dart';

class TransferOptions extends StatelessWidget {
  const TransferOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: accountOptions
            .map((item) => Column(
                  children: [
                    CircleIcon(
                      fillColor: item.fillColor,
                      icon: item.title != 'Intercambiar' ? item.icon : null,
                      iconAssets: item.title == 'Intercambiar'
                          ? AppAssets.exchange
                          : null,
                      iconColor: item.iconColor,
                      iconSize: 28,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      item.title,
                      style: Theme.of(context).textTheme.subtitle2,
                    )
                  ],
                ))
            .toList());
  }
}
