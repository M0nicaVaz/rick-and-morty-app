import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/widget/animated_image.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: <Widget>[
        const AnimatedImage(),
        SizedBox(
          width: 320,
          child: Text("Guia Definitivo de Personagens",
              style: TextStyle(
                color: Colors.cyan[400],
                fontSize: 48,
                fontFamily: GoogleFonts.creepster().fontFamily,
              )),
        )
      ],
    );
  }
}
