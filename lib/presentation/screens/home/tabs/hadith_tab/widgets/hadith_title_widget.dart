import 'package:flutter/material.dart';

import '../../../../../../core/routes_manager.dart';
import '../hadith_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  Hadith hadith;

  HadithTitleWidget({super.key, required this.hadith});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManager.HadithDetailsRoute,
            arguments: hadith);
      },
      child: Container(
        child: Text(
          hadith.title,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
