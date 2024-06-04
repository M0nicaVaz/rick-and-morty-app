import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/bloc/list_charaters_bloc.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/widget/characters_section.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/widget/hero_section.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/widget/pagination.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/widget/search_input.dart';

class ListCharatersPage extends StatefulWidget {
  const ListCharatersPage({super.key});

  @override
  State<ListCharatersPage> createState() => _ListCharatersPageState();
}

class _ListCharatersPageState extends State<ListCharatersPage> {
  @override
  Widget build(BuildContext context) {
    final ListCharatersBloc listCharatersBloc =
        Provider.of<ListCharatersBloc>(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const HeroSection(),
            const SizedBox(
              height: 48,
            ),
            SearchInput(
              label: "Digite o nome de um personagem",
              hintText: "EX: RICK",
              listCharatersBloc: listCharatersBloc,
            ),
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, left: 24),
              child: CharactersSection(listCharatersBloc: listCharatersBloc),
            ),
            const SizedBox(
              height: 24,
            ),
            Pagination(listCharatersBloc: listCharatersBloc)
          ],
        ),
      ),
    );
  }
}
