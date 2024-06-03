import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/src/core/container_registry.dart';
import 'package:rick_and_morty_flutter/src/core/entities/character.dart';
import 'package:rick_and_morty_flutter/src/utils/debouncer.dart';

class ListCharatersBloc extends ChangeNotifier {
  final Debouncer _debouncer = Debouncer(milliseconds: 500);
  List<Character> characters = <Character>[];
  String name = "";
  int page = 1;
  bool notFound = false;

  ListCharatersBloc() {
    _getCharacters();
  }

  _getCharacters() async {
    try {
      final List<Character> response = await ContainerRegistry
          .getCharactersUseCase
          .execute(page, name.trim());

      if (response.isNotEmpty) {
        characters = response;
      }
    } catch (e) {
      notFound = true;
      print(e);
    }

    notifyListeners();
  }

  searchByName(String value) {
    _debouncer.run(() {
      name = value;
      _getCharacters();
    });
  }

  loadMore() {
    page++;
    _getCharacters();
  }
}
