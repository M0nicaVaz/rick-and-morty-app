import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/src/config/colors.dart';
import 'package:rick_and_morty_flutter/src/core/entities/character.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/bloc/list_charaters_bloc.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/widget/character_card.dart';

class CharactersSection extends StatelessWidget {
  const CharactersSection({
    required this.listCharatersBloc,
    super.key,
  });

  final ListCharatersBloc listCharatersBloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: <Color>[Colors.lime, Colors.teal, Colors.cyan]),
        borderRadius: BorderRadius.circular(4),
      ),
      constraints: const BoxConstraints(maxWidth: 1280, maxHeight: 336),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: ColorsConfig().backgroundColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: listCharatersBloc.notFound
                    ? <Widget>[const Text("Personagem não encontrado")]
                    : listCharatersBloc.characters
                        .map((Character e) => CharacterCard(character: e))
                        .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
