import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/src/core/container_registry.dart';
import 'package:rick_and_morty_flutter/src/core/entities/character.dart';
import 'package:rick_and_morty_flutter/src/utils/debouncer.dart';

class ListCharatersBloc extends ChangeNotifier {
  final _debouncer = Debouncer(milliseconds: 500);
  List<Character> characters = [];
  String name = "";
  int page = 1;

  ListCharatersBloc() {
    _getCharacters();
  }

  _getCharacters() async {
    try {
      final response = await ContainerRegistry.getCharactersUseCase
          .execute(page, name.trim());

      if (response.length > 0) {
        characters = response;
      }
    } catch (e) {
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
