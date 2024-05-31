import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/bloc/list_charaters_bloc.dart';

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
      child: Column(children: [
        ...listCharatersBloc.characters.map((e) => ListTile(
              title: Text(e.name),
              subtitle: Text(e.species),
              leading: Image.network(e.image),
            )),
        ElevatedButton(
            onPressed: () {
              listCharatersBloc.loadMore();
            },
            child: const Text('carregar mais'))
      ]),
    );
  }
}
