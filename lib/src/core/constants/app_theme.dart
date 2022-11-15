import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_cryptocurrency/src/core/constants/app_colors.dart';

class AppTheme {
  static ThemeData ligthTheme = ThemeData(
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: AppColors.black,
      ),
      scaffoldBackgroundColor: AppColors.grey7);

  static SweepGradient sweepGradient = const SweepGradient(
    colors: [
      Color(0xfffbfbfe),
      Color(0xffeaf1f7),
      Color(0xfff4eff2),
      Color(0xfff7f7fa),
      Color(0xffecf4fb)
    ],
    stops: [0.0, 0.25, 0.5, 0.75, 1],
  );
}
