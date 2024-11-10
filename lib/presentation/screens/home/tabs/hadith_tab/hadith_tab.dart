import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../core/assets_manager.dart';
import 'widgets/hadith_title_widget.dart';

class HadithTab extends StatefulWidget {
  const HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadith> hadithList = [];

  @override
  Widget build(BuildContext context) {
    if (hadithList.isEmpty) {
      readHadithFile();
    }
    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset(AssetsManager.hadithHeaderImage)),
        Divider(
          color: Theme.of(context).dividerColor,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.hadithHeader,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.secondary),
        ),
        Divider(
          color: Theme.of(context).dividerColor,
          thickness: 3,
        ),
        Expanded(
          flex: 3,
          child: hadithList.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                        color: Theme.of(context).dividerColor,
                        thickness: 3,
                      ),
                  itemBuilder: (context, index) =>
                      HadithTitleWidget(hadith: hadithList[index]),
                  itemCount: hadithList.length),
        )
      ],
    );
  }

  void readHadithFile() async {
    var fileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadithItemList = fileContent.trim().split('#');
    for (int i = 0; i < hadithItemList.length; i++) {
      String hadithItem = hadithItemList[i];
      List<String> hadithLines = hadithItem.trim().split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String content = hadithLines.join('\n');
      Hadith hadith = Hadith(title: title, content: content);
      hadithList.add(hadith);
    }
    setState(() {});
  }
}

class Hadith {
  String title;
  String content;

  Hadith({required this.title, required this.content});
}