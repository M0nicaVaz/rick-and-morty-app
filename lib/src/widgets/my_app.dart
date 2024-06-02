import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty_flutter/src/config/font.dart';
import 'package:rick_and_morty_flutter/src/config/colors.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/pages/list_charaters_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick and Morty',
      theme: ThemeData(
        textTheme: FontConfig(),
        fontFamily: GoogleFonts.roboto().fontFamily,
        scaffoldBackgroundColor: ColorsConfig().backgroundColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsConfig().backgroundColor,
        ),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: SafeArea(
          child: ListCharatersPage(),
        ),
      ),
    );
  }
}
