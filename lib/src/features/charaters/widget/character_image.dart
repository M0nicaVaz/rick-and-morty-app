import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/src/core/entities/character.dart';

class CharacterImage extends StatelessWidget {
  const CharacterImage({
    super.key,
    required this.character,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(4),
        topRight: Radius.circular(4),
      ),
      child: Image.network(
        character.image,
        height: 120,
      ),
    );
  }
}
