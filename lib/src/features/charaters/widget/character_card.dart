import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
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
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(98, 155, 220, 57),
              Color.fromARGB(133, 0, 150, 135),
              Color.fromARGB(123, 0, 187, 212),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                child: Text(
                  character.name,
                  style: GoogleFonts.creepster(
                      textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.limeAccent,
                  )),
                  softWrap: true,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                      children: [
                        TextSpan(text: character.status),
                        TextSpan(
                          text: " | ",
                          style: TextStyle(color: Colors.teal),
                        ),
                        TextSpan(text: character.species),
                        TextSpan(
                          text: " | ",
                          style: TextStyle(color: Colors.teal),
                        ),
                        TextSpan(text: character.gender),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
