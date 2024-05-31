import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rick_and_morty_flutter/src/config/theme.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/bloc/list_charaters_bloc.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/pages/list_charaters_page.dart';

main() async {
  await dotenv.load();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ListCharatersBloc()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick and Morty',
      theme: ThemeData(
        scaffoldBackgroundColor: CustomTheme().backgroundColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: CustomTheme().brand300,
        ),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: ListCharatersPage(),
      ),
    );
  }
}
