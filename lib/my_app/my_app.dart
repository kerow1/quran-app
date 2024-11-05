import 'package:flutter/material.dart';

import '../config/theme/my_theme.dart';
import '../core/routes_manager.dart';
import '../presentation/screens/hadith_details_screen/hadith_details_screen.dart';
import '../presentation/screens/home/home_screen.dart';
import '../presentation/screens/home/splash/splash_screen.dart';
import '../presentation/screens/quran_details_screen/quran_details_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.homeRoute: (_) => const HomeScreen(),
        RoutesManager.splashRoute: (_) => const SplashScreen(),
        RoutesManager.quranDetailsRoute: (_) => const QuranDetailsScreen(),
        RoutesManager.HadithDetailsRoute: (_) => const HadithDetailsScreen(),
      },
      theme: MyTheme.lightTheme,
      initialRoute: RoutesManager.splashRoute,
    );
  }
}
