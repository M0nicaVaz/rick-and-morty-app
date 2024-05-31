import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:rick_and_morty_flutter/src/features/charaters/bloc/list_charaters_bloc.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/widget/character_card.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Wrap(children: [
              ...listCharatersBloc.characters
                  .map((e) => CharacterCard(character: e))
            ]),
          ),
          ElevatedButton(
              onPressed: () {
                listCharatersBloc.loadMore();
              },
              child: const Text('Carregar mais'))
        ],
      ),
    );
  }
}
