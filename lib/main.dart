import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:nested/nested.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/bloc/list_charaters_bloc.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty_flutter/src/widgets/my_app.dart';

main() async {
  await dotenv.load();
  runApp(
    MultiProvider(
      providers: <SingleChildWidget>[
        ChangeNotifierProvider(create: (BuildContext context) => ListCharatersBloc()),
      ],
      child: const MyApp(),
    ),
  );
}
