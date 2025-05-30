import 'package:flutter/material.dart';
import 'package:practice/whatsapp_ui.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home:WhatsAppUI(),
    debugShowCheckedModeBanner: false,
    themeMode: ThemeMode.light,
    );
  }
}
