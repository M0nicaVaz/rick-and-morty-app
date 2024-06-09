import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/src/core/entities/character.dart';

class CharacterImage extends StatelessWidget {
  const CharacterImage({
    required this.isHovered,
    required this.character,
    super.key,
  });

  final Character character;
  final bool isHovered;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(4),
          topRight: Radius.circular(4),
        ),
        child: MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(invertColors: isHovered ? true : false),
          child: Image.network(
            character.image,
            height: 120,
          ),
        ));
  }
}
