import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:skill_exchange_app/apps.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SkillExApp(),
    );
  }
}
