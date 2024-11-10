import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/providers/language_provider.dart';
import 'package:quran_app/providers/theme_provider.dart';

import 'my_app/my_app.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ChangeNotifierProvider(create: (context) => LanguageProvider())
  ], child: const MyApp()));
}
