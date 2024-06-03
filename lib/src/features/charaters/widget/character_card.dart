import 'package:flutter/material.dart';

import 'package:rick_and_morty_flutter/src/core/entities/character.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/widget/character_image.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/widget/character_name.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/widget/character_details.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({
    required this.character,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 205,
      height: 290,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color.fromARGB(98, 155, 220, 57),
              Color.fromARGB(133, 0, 150, 135),
              Color.fromARGB(123, 0, 187, 212),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CharacterImage(character: character),
              CharacterName(character: character),
              CharacterDetails(character: character, context: context),
            ],
          ),
        ),
      ),
    );
  }
}
