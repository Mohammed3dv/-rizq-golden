import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'screens/dashboard_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: RizqApp()));
}

class RizqApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'رِزْق الذهبي 10.0',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF0E9F6E), brightness: Brightness.dark),
        scaffoldBackgroundColor: Color(0xFF0A0E12),
      ),
      builder: (c, child) => Directionality(textDirection: TextDirection.rtl, child: child!),
      home: DashboardScreen(),
    );
  }
}
