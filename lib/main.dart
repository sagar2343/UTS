import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:utss/features/home/views/pages/home_screen.dart';

import 'config/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS',
      theme: myAppTheme,
      home: const HomeScreen(),
    );
  }
}

