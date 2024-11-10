import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/presentation/screens/quran_details_screen/widgets/verses_widget.dart';
import 'package:quran_app/providers/theme_provider.dart';

import '../../../core/assets_manager.dart';
import '../home/tabs/quran_tab/quran_tab.dart';

class QuranDetailsScreen extends StatefulWidget {
  const QuranDetailsScreen({super.key});
  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}
class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if (verses.isEmpty) readQuranFileV2(suraItem.index + 1);
    return Stack(children: [
      Image.asset(
        themeProvider.isLightTheme()
            ? AssetsManager.mainBgLight
            : AssetsManager.mainBgDark,
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
      Scaffold(
          appBar: AppBar(
            title: Text(suraItem.suraName),
          ),
          body: verses.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) =>
                      VerseWidget(verse: verses[index]),
                  itemCount: verses.length,
                )),
    ]);
  }

  void readQuranFile(int index) async {
    String fileContent = await rootBundle.loadString('assets/files/$index.txt');
    setState(() {
      verses = fileContent.trim().split('\n');
    });
  }

  void readQuranFileV2(int index) {
    rootBundle.loadString('assets/files/$index.txt').then(
      (fileContent) {
        verses = fileContent.trim().split('\n');
        setState(() {});
      },
    );
  }
}
