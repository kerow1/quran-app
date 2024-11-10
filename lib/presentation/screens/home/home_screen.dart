import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/settings_tab/settings_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/tasbeh_tab/tasbeh_tab.dart';
import 'package:quran_app/providers/theme_provider.dart';

import '../../../core/assets_manager.dart';
import 'tabs/radio_tab/radio_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    const TasbehTab(),
    const RadioTab(),
    const SettingsTab()
  ];

  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(themeProvider.isLightTheme()
              ? AssetsManager.mainBgLight
              : AssetsManager.mainBgDark),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage(AssetsManager.quranIcon)),
                label: AppLocalizations.of(context)!.quranTab),
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                label: AppLocalizations.of(context)!.hadithTab),
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage(AssetsManager.sebhaIcon)),
                label: AppLocalizations.of(context)!.sebhaTab),
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage(AssetsManager.radioIcon)),
                label: AppLocalizations.of(context)!.radioTab),
            BottomNavigationBarItem(
                icon: const Icon(Icons.settings_rounded),
                label: AppLocalizations.of(context)!.settingsTab),
          ],
          onTap: (index) {
            tabIndex = index;
            setState(() {});
          },
          currentIndex: tabIndex,
        ),
        body: tabs[tabIndex],
      ),
    );
  }
}
