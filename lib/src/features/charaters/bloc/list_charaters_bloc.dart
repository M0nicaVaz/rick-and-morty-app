import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/src/core/container_registry.dart';
import 'package:rick_and_morty_flutter/src/core/entities/character.dart';

class ListCharatersBloc extends ChangeNotifier {
  List<Character> characters = [];
  int page = 1;

  ListCharatersBloc() {
    _getCharacters();
  }

  _getCharacters() async {
    final response = await ContainerRegistry.getCharactersUseCase.execute(page);
    characters = response;
    notifyListeners();
  }

  loadMore() {
    page++;
    _getCharacters();
  }
}
