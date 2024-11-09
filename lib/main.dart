import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_tutorial/home.dart';
import 'package:get/get.dart';

import 'localization_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalizationService.loadTranslations();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Localizations Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      locale: LocalizationService.defaultLocale,
      translations: LocalizationService(),
      supportedLocales: LocalizationService().getSupportedLocales(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: Home(),
    );
  }
}
