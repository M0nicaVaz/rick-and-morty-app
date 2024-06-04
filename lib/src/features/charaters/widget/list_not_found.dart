import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListNotFound extends StatelessWidget {
  const ListNotFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 284,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.network(
            "https://rick-and-morty-guide.vercel.app/_next/image?url=/_next/static/media/notfound.bcb298c7.gif&w=384&q=75",
            width: 140,
          ),
          Text(
            "Desculpa. Não encontrei.",
            style: TextStyle(
              color: Colors.cyan[400],
              fontSize: 24,
              fontFamily: GoogleFonts.creepster().fontFamily,
            ),
          ),
        ],
      ),
    );
  }
}
