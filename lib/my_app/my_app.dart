import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/providers/language_provider.dart';
import 'package:quran_app/providers/theme_provider.dart';

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
    var themeProvider = Provider.of<ThemeProvider>(context);
    var langProvider = Provider.of<LanguageProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.homeRoute: (_) => const HomeScreen(),
        RoutesManager.splashRoute: (_) => const SplashScreen(),
        RoutesManager.quranDetailsRoute: (_) => const QuranDetailsScreen(),
        RoutesManager.HadithDetailsRoute: (_) => const HadithDetailsScreen(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: themeProvider.currentTheme,
      initialRoute: RoutesManager.splashRoute,
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      locale: Locale(langProvider.currentLanguage),
    );
  }
}
