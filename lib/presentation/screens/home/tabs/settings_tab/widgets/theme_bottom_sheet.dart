import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedItemThemeWidget('light'),
          SizedBox(
            height: 8,
          ),
          buildSelectedItemThemeWidget('Dark')
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
        Spacer(),
        Icon(
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
