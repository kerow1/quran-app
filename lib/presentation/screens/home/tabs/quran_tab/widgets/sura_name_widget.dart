import 'package:flutter/material.dart';
import 'package:quran_app/core/routes_manager.dart';
import 'package:quran_app/presentation/screens/home/tabs/quran_tab/quran_tab.dart';

class SuraNameWidget extends StatelessWidget {
  SuraNameWidget({super.key, required this.suraItem});

  SuraItem suraItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManager.quranDetailsRoute,
          arguments: suraItem,
        );
      },
      child: IntrinsicHeight(
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            Expanded(
                child: Text(
              suraItem.suraName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            )),
            Container(
              width: 3,
              color: Theme.of(context).dividerColor,
            ),
            Expanded(
                child: Text(
              suraItem.versesNumber,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            )),
          ],
        ),
      ),
    );
  }
}
