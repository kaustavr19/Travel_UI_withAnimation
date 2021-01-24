import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/travel/travel_page.dart';
import 'colors.dart';
import 'fun_ui/christmas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChristmasTree(),
      theme: ThemeData(
        accentColor: Coolors.reddish,
        primaryColor: Coolors.purplish,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
