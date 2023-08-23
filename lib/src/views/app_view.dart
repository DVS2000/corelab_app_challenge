import 'package:corelab_app_challenge/src/views/pages/home_page.dart';
import 'package:flutter/material.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Corelab App Challenge",
      home: HomePage(),
    );
  }
}