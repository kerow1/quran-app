import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';

import '../../../core/assets_manager.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadithArgs = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AssetsManager.mainBgLight),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle),
        ),
        body: SingleChildScrollView(
          child: Card(
            color: Theme.of(context).dividerColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    hadithArgs.title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                  color: Theme.of(context).indicatorColor,
                  height: 1,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    hadithArgs.content,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
