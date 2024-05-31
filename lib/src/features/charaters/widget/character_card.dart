import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/src/core/entities/character.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({
    super.key,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 205,
      height: 256,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4),
              ),
              child: Image.network(
                character.image,
                height: 120,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(character.name),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(character.species),
            ),
          ],
        ),
      ),
    );
  }
}
