import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty_flutter/src/config/colors.dart';
import 'package:rick_and_morty_flutter/src/core/entities/character.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/bloc/list_charaters_bloc.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/widget/character_card.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/widget/list_not_found.dart';

class CharactersSection extends StatelessWidget {
  const CharactersSection({
    required this.listCharatersBloc,
    super.key,
  });

  final ListCharatersBloc listCharatersBloc;

  @override
  Widget build(BuildContext context) {
    final double screenSize = MediaQuery.sizeOf(context).width;

    return Container(
      height: 356,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: <Color>[Colors.lime, Colors.teal, Colors.cyan]),
        borderRadius: BorderRadius.circular(4),
      ),
      constraints: BoxConstraints(
        minWidth: listCharatersBloc.notFound ? screenSize - 280 : 0,
        maxWidth: 1280,
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
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 16.0,
                  runSpacing: 16.0,
                  children: listCharatersBloc.notFound
                      ? <Widget>[const ListNotFound()]
                      : listCharatersBloc.characters!
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
