import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty_flutter/src/core/entities/character.dart';

class CharacterName extends StatelessWidget {
  const CharacterName({
    super.key,
    required this.character,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Text(
        character.name,
        style: GoogleFonts.creepster(
          textStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.lime,
          ),
        ),
        softWrap: true,
        maxLines: 2,
        textAlign: TextAlign.center,
      ),
    );
  }
}
