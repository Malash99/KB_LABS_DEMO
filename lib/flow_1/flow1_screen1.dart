import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kb_demo_startup/generated/app_localizations.dart';
import 'package:kb_demo_startup/routes/route_names.dart';

class Flow1Screen1 extends StatelessWidget {
  

  const Flow1Screen1({super.key});
  
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Center(child: Text(localizations.f1s1)),
          ),
          ElevatedButton(
                  child: Text(localizations.f1s2),
                  onPressed: () {
                    context.pushNamed(RouteNames.flow1_screen2Name);
                  },
                ),
        ],
      ),
    );
  }
}