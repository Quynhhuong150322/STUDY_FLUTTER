import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../apps/config/theme_custom.dart';
import 'bottom_navigation/bottom_custom.dart';
import '../providers/weather_provider.dart';
import 'home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WeatherProvider(),
      child: MaterialApp(
        theme: ThemeCustom.themeLight,
        home: const BottomNavigationCustom(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
