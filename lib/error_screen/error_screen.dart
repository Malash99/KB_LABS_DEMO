import 'package:flutter/material.dart';

class Errorpage extends StatelessWidget {
  const Errorpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: const Center(child: Text('ErrorPage')),
      ),
    );
  }
}
