import 'package:flutter/material.dart';
import 'package:quran_app/presentation/screens/home/tabs/settings_tab/widgets/language_bottom_sheet.dart';
import 'package:quran_app/presentation/screens/home/tabs/settings_tab/widgets/theme_bottom_sheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Theme', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Theme.of(context).dividerColor)),
              child:
                  Text('Light', style: Theme.of(context).textTheme.labelSmall),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text('Language', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Theme.of(context).dividerColor)),
              child: Text('English',
                  style: Theme.of(context).textTheme.labelSmall),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => const ThemeBottomSheet());
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => const LanguageBottomSheet());
  }
}
