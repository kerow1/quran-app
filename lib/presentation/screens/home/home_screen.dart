import 'package:flutter/material.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/settings_tab/settings_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/tasbeh_tab/tasbeh_tab.dart';

import '../../../core/assets_manager.dart';
import '../../../core/colors_manager.dart';
import '../../../core/strings_manager.dart';
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
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AssetsManager.mainBgLight),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(StringsManager.apptitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                backgroundColor: ColorsManager.goldColor,
                icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),
                label: StringsManager.quranLabel),
            BottomNavigationBarItem(
                backgroundColor: ColorsManager.goldColor,
                icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                label: StringsManager.hadithLabel),
            BottomNavigationBarItem(
                backgroundColor: ColorsManager.goldColor,
                icon: ImageIcon(AssetImage(AssetsManager.sebhaIcon)),
                label: StringsManager.tasbehLabel),
            BottomNavigationBarItem(
                backgroundColor: ColorsManager.goldColor,
                icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
                label: StringsManager.radioLabel),
            BottomNavigationBarItem(
                backgroundColor: ColorsManager.goldColor,
                icon: Icon(Icons.settings_rounded),
                label: StringsManager.settingLabel),
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
