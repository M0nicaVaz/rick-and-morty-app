import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/src/core/container_registry.dart';
import 'package:rick_and_morty_flutter/src/core/entities/character.dart';
import 'package:rick_and_morty_flutter/src/core/infra/dto/list_characters.dto.dart';
import 'package:rick_and_morty_flutter/src/utils/debouncer.dart';

class ListCharatersBloc extends ChangeNotifier {
  final Debouncer _debouncer = Debouncer(milliseconds: 500);
  List<Character>? characters = <Character>[];
  String name = "";
  int currentPage = 1;
  int totalPages = 1;
  bool notFound = false;

  ListCharatersBloc() {
    _getCharacters();
  }

  _getCharacters() async {
    try {
      final ListCharactersDto? response = await ContainerRegistry
          .getCharactersUseCase
          .execute(currentPage, name.trim());

      if (response?.results != null) {
        characters = response?.results;
      }

      totalPages = response?.pages ?? 1;
    } catch (e) {
      notFound = true;
      print(e);
    }

    notifyListeners();
  }

  searchByName(String value) {
    _debouncer.run(() {
      name = value;
      currentPage = 1;

      if (value.isEmpty) {
        notFound = false;
        _getCharacters();
        return;
      }

      _getCharacters();
    });
  }

  previousPage() {
    if (currentPage > 1) {
      currentPage--;
      _getCharacters();
    }
  }

  nextPage() {
    if (currentPage < totalPages) {
      currentPage++;
      _getCharacters();
    }
  }
}
