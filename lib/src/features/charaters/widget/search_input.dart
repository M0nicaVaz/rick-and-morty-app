import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty_flutter/src/config/colors.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/bloc/list_charaters_bloc.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    required this.label,
    required this.hintText,
    required this.listCharatersBloc,
    super.key,
  });

  final ListCharatersBloc listCharatersBloc;
  final String hintText;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(label,
            style: const TextStyle(
              color: Colors.lime,
              fontSize: 18,
            )),
        const SizedBox(height: 8),
        TextField(
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(
                RegExp(r'[a-zA-Z\s]'),
              ),
            ],
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lime,
                  width: 2,
                ),
              ),
              filled: true,
              fillColor: ColorsConfig().backgroundLight,
              contentPadding: const EdgeInsets.all(16),
              constraints: const BoxConstraints(maxWidth: 448),
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.white54,
                fontSize: 24,
              ),
            ),
            style: GoogleFonts.creepster(
              fontSize: 24,
              color: Colors.white54,
            ),
            onChanged: (String value) => listCharatersBloc.searchByName(value)),
      ],
    );
  }
}
