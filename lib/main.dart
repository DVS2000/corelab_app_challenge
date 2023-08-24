import 'package:corelab_app_challenge/src/core/inject.dart';
import 'package:corelab_app_challenge/src/views/app_view.dart';
import 'package:flutter/material.dart';

void main() {

  // INJECT DEPENDECE
  Inject.init();

  runApp(const AppView());
}