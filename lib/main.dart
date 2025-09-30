import 'package:flutter/material.dart';
import 'package:music_app/core/configs/theme/app_theme.dart';
import 'package:music_app/presentation/choose_mode/page/choose_mode.dart';
import 'package:music_app/presentation/splash/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: ChooseModePage()
    );
  }
}


