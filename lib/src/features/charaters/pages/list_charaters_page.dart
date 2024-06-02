import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/bloc/list_charaters_bloc.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/widget/characters_section.dart';

class ListCharatersPage extends StatefulWidget {
  const ListCharatersPage({super.key});

  @override
  State<ListCharatersPage> createState() => _ListCharatersPageState();
}

class _ListCharatersPageState extends State<ListCharatersPage> {
  @override
  Widget build(BuildContext context) {
    final ListCharatersBloc listCharatersBloc =
        Provider.of<ListCharatersBloc>(context);

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextFormField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'[a-zA-Z\s]'),
                ),
              ],
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "EX: RICK",
                  hintStyle: const TextStyle(color: Colors.white54)),
              style: GoogleFonts.creepster(),
              onChanged: (value) => listCharatersBloc.searchByName(value)),
          SizedBox(
            height: 80,
          ),
          Center(
            child: CharactersSection(listCharatersBloc: listCharatersBloc),
          ),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: () {
              listCharatersBloc.loadMore();
            },
            child: const Text('Carregar mais'),
          )
        ],
      ),
    );
  }
}
