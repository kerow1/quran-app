import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String verse;

  VerseWidget({super.key, required this.verse});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: Theme.of(context).cardTheme.margin,
      color: Theme.of(context).cardTheme.color,
      elevation: 18,
      shape: Theme.of(context).cardTheme.shape,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        child: Text(
          verse,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
