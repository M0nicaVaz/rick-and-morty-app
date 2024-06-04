import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        Image.network(
          "https://rick-and-morty-guide.vercel.app/_next/image?url=/_next/static/media/hero.053d2bb1.png&w=1080&q=75",
          width: 440,
        ),
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
