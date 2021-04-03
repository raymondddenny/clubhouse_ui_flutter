import 'package:flutter/material.dart';
import 'package:flutter_clubhouse/config/pallete.dart';
import 'package:flutter_clubhouse/presentation/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clubhouse UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Pallete.background),
        scaffoldBackgroundColor: Pallete.background,
        primaryColor: Pallete.whiteColor,
        accentColor: Pallete.greenColor,
        iconTheme: const IconThemeData(color: Pallete.blackColor),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
