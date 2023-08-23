import 'package:corelab_app_challenge/src/views/pages/home_page.dart';
import 'package:corelab_app_challenge/src/views/utils/consts_utils.dart';
import 'package:flutter/material.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Corelab App Challenge",
      theme: ThemeData.light().copyWith(
        primaryColor: ConstsUtils.colorPrimary
      ),
      home: const HomePage(),
    );
  }
}