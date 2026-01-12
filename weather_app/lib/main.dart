import 'package:flutter/material.dart';
import 'screens/weather_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Use a modern, clean theme
        scaffoldBackgroundColor: const Color(0xFFF5F5F5), // Off-white background
        fontFamily: 'sans-serif', // A clean, modern font
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          foregroundColor: Colors.black, // Black title for a minimal look
        ),
        useMaterial3: true,
      ),
      home: const WeatherScreen(),
    );
  }
}
