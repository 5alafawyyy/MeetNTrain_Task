import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    iconTheme: IconThemeData(
      size: FontSizeManager.s24.sp,
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
        fontSize: FontSizeManager.s18.sp,
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
        fontSize: FontSizeManager.s36.sp,
      ),
      displayMedium: getRegularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s30.sp,
      ),
      displaySmall: getRegularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s18.sp,
      ),

      // HEADLINE REGULAR
      headlineLarge: getRegularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s22.sp,
      ),
      headlineMedium: getRegularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s20.sp,
      ),
      headlineSmall: getRegularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s18.sp,
      ),

      // TITLE MEDIUM
      titleLarge: getMediumStyle(
        color: ColorManager.secondary,
        fontSize: FontSizeManager.s22.sp,
      ),
      titleMedium: getRegularStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s16.sp,
      ),
      titleSmall: getMediumStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s14.sp,
      ),

      // LABEL MEDIUM
      labelLarge: getRegularStyle(
        color: ColorManager.secondary,
        fontSize: FontSizeManager.s16.sp,
      ),
      labelMedium: getMediumStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s12.sp,
      ),
      labelSmall: getMediumStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s11.sp,
      ),

      // BODY MEDIUM
      bodyLarge: getMediumStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s16.sp,
      ),
      bodyMedium: getRegularStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s14.sp,
      ),
      bodySmall: getRegularStyle(
        color: ColorManager.primary,
        fontSize: FontSizeManager.s16.sp,
      ),
    ),
  );
}
