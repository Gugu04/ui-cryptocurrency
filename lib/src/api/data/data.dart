import 'package:flutter/material.dart';

import 'package:ui_cryptocurrency/src/core/constants/app_assets.dart';
import 'package:ui_cryptocurrency/src/core/constants/app_colors.dart';

final accountOptions = [
  AccountOption(
      icon: Icons.arrow_upward_rounded,
      iconColor: AppColors.yellow,
      fillColor: AppColors.grey3,
      title: 'Enviar'),
  AccountOption(
      icon: Icons.currency_exchange,
      iconColor: AppColors.write,
      fillColor: AppColors.blue2,
      title: 'Intercambiar'),
  AccountOption(
      icon: Icons.arrow_downward_rounded,
      iconColor: AppColors.green2,
      fillColor: AppColors.grey3,
      title: 'Recibir')
];

final coins = [
  Coin(
      fillColor: AppColors.orange,
      icon: AppAssets.bitcoin,
      iconSize: 30,
      title: 'Bitcoin',
      increase: false,
      percentage: 1.42,
      tag: 'Blockchain',
      amount: 0.1,
      acronym: 'BTC',
      price: '\$65,000'),
  Coin(
      fillColor: AppColors.purple,
      icon: AppAssets.eth,
      iconSize: 33,
      title: 'ETH',
      increase: true,
      percentage: 2.4,
      tag: 'Tron',
      amount: 0.42,
      acronym: 'ETH',
      price: '\$20,000'),
  Coin(
      fillColor: AppColors.blue,
      icon: AppAssets.broxel,
      iconSize: 60,
      title: 'Broxels Plus',
      increase: true,
      percentage: 0.56,
      tag: 'Ether',
      amount: 40,
      acronym: 'BXP',
      price: '\$5,000'),
  Coin(
      fillColor: AppColors.green3,
      icon: AppAssets.usdt,
      iconSize: 22,
      title: 'USDT',
      increase: true,
      percentage: 0.56,
      tag: 'Ether',
      amount: 50.00,
      acronym: 'USDT',
      price: '\$1,000')
];

final navigationOptions = [
  NavigationOption(
      icon: AppAssets.home, iconSize: 27, tag: 'Inicio', selected: true),
  NavigationOption(icon: AppAssets.wallets, iconSize: 27, tag: 'Wallets'),
  NavigationOption(icon: AppAssets.charts, iconSize: 27, tag: 'Mercado'),
  NavigationOption(icon: AppAssets.reports, iconSize: 27, tag: 'Reportes'),
];

class AccountOption {
  IconData icon;
  Color iconColor;
  Color fillColor;
  String title;
  AccountOption({
    required this.icon,
    required this.iconColor,
    required this.fillColor,
    required this.title,
  });
}

class Coin {
  Color fillColor;
  String icon;
  Color? iconColor;
  double iconSize;
  String title;
  bool increase;
  double percentage;
  String tag;
  double amount;
  String acronym;
  String price;
  String? typeCoin;

  Coin({
    required this.fillColor,
    required this.icon,
    this.iconColor = AppColors.write,
    required this.iconSize,
    required this.title,
    required this.increase,
    required this.percentage,
    required this.tag,
    required this.amount,
    required this.acronym,
    required this.price,
    this.typeCoin = 'MX',
  });
}

class NavigationOption {
  String icon;
  bool? selected;
  double iconSize;
  String tag;
  NavigationOption({
    required this.icon,
    this.selected = false,
    required this.iconSize,
    required this.tag,
  });
}
