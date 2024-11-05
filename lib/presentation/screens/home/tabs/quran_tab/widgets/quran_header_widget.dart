import 'package:flutter/material.dart';

import '../../../../../../core/strings_manager.dart';

class QuranHeaderWidget extends StatelessWidget {
  const QuranHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal:
                  BorderSide(width: 2, color: Theme.of(context).dividerColor))),
      child: IntrinsicHeight(
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            Expanded(
              flex: 3,
              child: Text(
                StringsManager.chapterName,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Theme.of(context).dividerColor,
              width: 3,
            ),
            Expanded(
                flex: 3,
                child: Text(
                  StringsManager.versesNumber,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      ),
    );
  }
}
