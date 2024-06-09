import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/src/core/entities/character.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({
    required this.character,
    super.key,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FittedBox(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.white,
                ),
            children: <InlineSpan>[
              TextSpan(text: character.status),
              const TextSpan(
                text: " | ",
                style: TextStyle(color: Colors.teal),
              ),
              TextSpan(text: character.species),
              const TextSpan(
                text: " | ",
                style: TextStyle(color: Colors.teal),
              ),
              TextSpan(text: character.gender),
            ],
          ),
        ),
      ),
    );
  }
}
