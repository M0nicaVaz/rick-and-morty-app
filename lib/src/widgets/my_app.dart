import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty_flutter/src/config/theme.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/pages/list_charaters_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick and Morty',
      theme: ThemeData(
        fontFamily: GoogleFonts.roboto().fontFamily,
        scaffoldBackgroundColor: CustomTheme().backgroundColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: CustomTheme().brand300,
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
