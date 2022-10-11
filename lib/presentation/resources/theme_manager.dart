import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meet_n_train_task/presentation/resources/color_manager.dart';
import 'package:meet_n_train_task/presentation/resources/font_manager.dart';
import 'package:meet_n_train_task/presentation/resources/style_manager.dart';
import 'package:meet_n_train_task/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of application
    fontFamily: FontConstants.fontFamily,
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primary,
    primaryColorDark: ColorManager.white,
    disabledColor: ColorManager.grey,
    scaffoldBackgroundColor: ColorManager.backgroundColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: ColorManager.grey,
    ),

    // Icon Theme
    iconTheme: const IconThemeData(
      size: FontSizeManager.s24,
      color: ColorManager.secondary,
    ),

    // Progress Indicator Theme
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: ColorManager.primary,
      circularTrackColor: ColorManager.grey,
    ),

    // card view theme
    cardTheme: const CardTheme(
      margin: EdgeInsets.all(AppMargin.m12),
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.s15),
        ),
      ),
    ),

    // app bar theme
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: ColorManager.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      centerTitle: true,
      color: ColorManager.transparent,
      elevation: AppSize.s4,
      shadowColor: ColorManager.transparent,
      titleTextStyle: getRegularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s18,
      ),

      // Icon Theme AppBar
      iconTheme: const IconThemeData(
        size: FontSizeManager.s25,
        color: ColorManager.black,
      ),
    ),

    // text theme
    textTheme: TextTheme(
      // DISPLAY REGULAR

      displayLarge: getBoldStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s50,
      ),
      displayMedium: getRegularStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s45,
      ),
      displaySmall: getRegularStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s36,
      ),

      // HEADLINE REGULAR
      headlineLarge: getRegularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s22,
      ),
      headlineMedium: getRegularStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s20,
      ),
      headlineSmall: getRegularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s18,
      ),

      // TITLE MEDIUM
      titleLarge: getMediumStyle(
        color: ColorManager.secondary,
        fontSize: FontSizeManager.s22,
      ),
      titleMedium: getMediumStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s16,
      ),
      titleSmall: getMediumStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s14,
      ),

      // LABEL MEDIUM
      labelLarge: getRegularStyle(
        color: ColorManager.secondary,
        fontSize: FontSizeManager.s16,
      ),
      labelMedium: getMediumStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s12,
      ),
      labelSmall: getMediumStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s11,
      ),

      // BODY MEDIUM
      bodyLarge: getMediumStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s16,
      ),
      bodyMedium: getRegularStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s14,
      ),
      bodySmall: getRegularStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s12,
      ),
    ),
  );
}
