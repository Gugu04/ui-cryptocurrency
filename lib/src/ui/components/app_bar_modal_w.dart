import 'package:flutter/material.dart';
import 'package:ui_cryptocurrency/src/core/constants/app_colors.dart';

class AppBarModalW extends StatelessWidget {
  final String title;
  const AppBarModalW({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors.black,
              size: 28,
            ),
          ),
          onTap: () => Navigator.of(context).pop(),
        ),
        Expanded(
            child: Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.bold),
        ))
      ],
    );
  }
}
