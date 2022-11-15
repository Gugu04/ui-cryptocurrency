import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_cryptocurrency/src/api/data/data.dart';
import 'package:ui_cryptocurrency/src/core/constants/constats.dart';

class NavigationBarUi extends StatelessWidget {
  const NavigationBarUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.write,
      height: 70,
      child: Stack(
        children: [
          const Divider(
            height: 2,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: navigationOptions
                  .map((item) => Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            width: 40,
                            height: 4,
                            decoration: BoxDecoration(
                                color: item.selected!
                                    ? AppColors.blue2
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SvgPicture.asset(
                            item.icon,
                            height: item.iconSize,
                            color: item.selected!
                                ? AppColors.blue2
                                : AppColors.grey5,
                          ),
                          Text(
                            item.tag,
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      color: item.selected!
                                          ? AppColors.blue2
                                          : AppColors.grey5,
                                    ),
                          )
                        ],
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
