import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedItemLangWidget('English'),
          SizedBox(
            height: 8,
          ),
          buildUnSelectedItemLangWidget('العربية'),
        ],
      ),
    );
  }

  Widget buildSelectedItemLangWidget(String selectedLang) {
    return Row(
      children: [
        Text(
          selectedLang,
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

  Widget buildUnSelectedItemLangWidget(String unSelectedLang) {
    return Row(
      children: [
        Text(
          unSelectedLang,
          style: Theme.of(context)
              .textTheme
              .displayMedium
              ?.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
