import 'package:flutter/material.dart';
import 'package:kb_demo_startup/generated/app_localizations.dart';

class Flow1Screen2 extends StatelessWidget {
  const Flow1Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Column(
            children: [
              Center(child: Text(localizations.f1s2)),
            ],
          ),
        ],
      ),
    );
  }
}