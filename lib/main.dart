import 'package:finda_a_table/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MaterialApp(
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate
    ],
    supportedLocales: [
      Locale("pt"),
    ],
    home: Splash(),
    debugShowCheckedModeBanner: false,
  ));
}
