import 'package:flutter/material.dart';
import 'package:news_git_hub/core/app_route.dart';
import 'package:news_git_hub/core/app_theme.dart';
import 'package:news_git_hub/home/category_details/category_details.dart';
import 'package:news_git_hub/home/home_screen.dart';

import 'l10n/app_localizations.dart';

void main(){


  runApp(MyApp());



}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
       initialRoute: AppRoute.homeScreen,
      locale: Locale('en'),
      routes: {
        AppRoute.homeScreen:(context)=>HomeScreen(),
        AppRoute.categoryDetails:(context)=>CategoryDetails()
      },
     darkTheme:AppTheme.darkTheme ,
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,


    );
  }
}
