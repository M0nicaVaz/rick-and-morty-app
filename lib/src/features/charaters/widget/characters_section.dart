import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/src/config/colors.dart';
import 'package:rick_and_morty_flutter/src/core/entities/character.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/providers/list_charaters_provider.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/widget/character_card.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/widget/list_not_found.dart';

class CharactersSection extends StatelessWidget {
  const CharactersSection({
    required this.listCharatersProvider,
    super.key,
  });

  final ListCharatersProvider listCharatersProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 356,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: <Color>[Colors.lime, Colors.teal, Colors.cyan]),
        borderRadius: BorderRadius.circular(4),
      ),
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
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 16.0,
                  runSpacing: 16.0,
                  children: listCharatersProvider.notFound
                      ? <Widget>[const ListNotFound()]
                      : listCharatersProvider.characters!
                          .map((Character e) => CharacterCard(character: e))
                          .toList(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
