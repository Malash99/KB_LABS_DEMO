import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kb_demo_startup/generated/app_localizations.dart';
import 'package:kb_demo_startup/routes/route_names.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the AppLocalizations instance
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(localizations.helloWorld)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(localizations.helloWorld),
            Text(localizations.name),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(RouteNames.flow1_screen1Name);
              },
              child: Text("go to flow1 first screen..."),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(RouteNames.flow2_screen1Name);
              },
              child: Text("go to flow2 first screen..."),
            ),
          ],
        ),
      ),
    );
  }
}
