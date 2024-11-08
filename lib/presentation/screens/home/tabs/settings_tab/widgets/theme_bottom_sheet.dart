import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedItemThemeWidget(AppLocalizations.of(context)!.light),
          const SizedBox(
            height: 8,
          ),
          buildUnSelectedItemThemeWidget(AppLocalizations.of(context)!.dark)
        ],
      ),
    );
  }

  Widget buildSelectedItemThemeWidget(String selectedTheme) {
    return Row(
      children: [
        Text(
          selectedTheme,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const Spacer(),
        const Icon(
          Icons.check,
          color: Colors.white,
          size: 28,
        )
      ],
    );
  }

  Widget buildUnSelectedItemThemeWidget(String unSelectedTheme) {
    return Row(
      children: [
        Text(
          unSelectedTheme,
          style: Theme.of(context)
              .textTheme
              .displayMedium
              ?.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
