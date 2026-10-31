// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_tracker_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const FlutterTrackerApp(),
  );
}

class FlutterTrackerApp extends StatefulWidget {
  const FlutterTrackerApp({super.key});

  @override
  State<FlutterTrackerApp> createState() => _FlutterTrackerAppState();
}

class _FlutterTrackerAppState extends State<FlutterTrackerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(
        // useMaterial3: true,
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: GoogleFonts.kanit().fontFamily,
              fontFamilyFallback: GoogleFonts.kanit().fontFamilyFallback,
            ),
      ),
    );
  }
}
