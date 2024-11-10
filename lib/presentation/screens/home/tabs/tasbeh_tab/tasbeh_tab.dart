import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/providers/theme_provider.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab>
    with SingleTickerProviderStateMixin {
  int _counter = 0;
  double angle = 0;

  @override
  int tasbehCounter() {
    if (_counter == 33) _counter = 0;
    angle += 0.1;
    _counter++;
    setState(() {});
    return _counter;
  }

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                themeProvider.currentTheme == ThemeMode.light
                    ? AssetsManager.lightSebhaHead
                    : AssetsManager.darkSebhaHead,
                width: 40,
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Transform.rotate(
                  angle: angle,
                  child: Image.asset(
                    themeProvider.currentTheme == ThemeMode.light
                        ? AssetsManager.lightSebhaBody
                        : AssetsManager.darhSebhaBody,
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.tasbehNumber,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              '$_counter',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).dividerColor,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                tasbehCounter();
              },
              child: Text(
                AppLocalizations.of(context)!.tasbehTitle,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
