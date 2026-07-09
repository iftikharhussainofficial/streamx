import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/splash/splash.screen.dart';

void main() {
  runApp(const StreamXApp());
}

class StreamXApp extends StatelessWidget {
  const StreamXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IFFARIX',
      theme: AppTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}