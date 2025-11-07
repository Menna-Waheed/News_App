import 'package:flutter/material.dart';
import 'package:news_git_hub/core/app_color.dart';
import 'package:news_git_hub/core/app_style.dart';




class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColor.whiteColor,
    canvasColor: AppColor.blackColor,
    scaffoldBackgroundColor: AppColor.whiteColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.whiteColor,
      iconTheme: IconThemeData(color: AppColor.blackColor),
      centerTitle: true,
    ),
    textTheme: TextTheme(
      labelSmall: AppStyle.mediam12gray,
      labelMedium: AppStyle.mediam14black,
      labelLarge: AppStyle.bold16black,
      headlineMedium: AppStyle.mediam24black,
      headlineLarge: AppStyle.mediam20black,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: AppColor.blackColor,
    canvasColor: AppColor.whiteColor,
    scaffoldBackgroundColor: AppColor.blackColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.blackColor,
      iconTheme: IconThemeData(color: AppColor.whiteColor),
      centerTitle: true,
    ),
    textTheme: TextTheme(
      labelSmall: AppStyle.mediam12gray,
      labelMedium: AppStyle.mediam14white,
      labelLarge: AppStyle.bold16white,
      headlineMedium: AppStyle.mediam24white,
      headlineLarge: AppStyle.mediam20white,
    ),
  );
}
