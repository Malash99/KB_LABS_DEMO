import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kb_demo_startup/Theme/Theme.dart';
import 'package:kb_demo_startup/generated/app_localizations.dart';
import 'package:kb_demo_startup/routes/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = AppRouter.returnRouter(false);
    final isDarkMode = true;
    return MaterialApp.router(  // Changed to MaterialApp.router
      title: 'Flutter Demo',
      // Localization delegates
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // Supported locales
      supportedLocales: const [
        Locale('en'), // English
        Locale('es'), // Spanish
        // Add other locales as needed
      ],
      // Use device locale
      locale: const Locale('es'),
      theme: getAppTheme(isDarkMode),
      // Replace home with routerConfig
      routerConfig: router,  // Use the router here
    );
  }
}