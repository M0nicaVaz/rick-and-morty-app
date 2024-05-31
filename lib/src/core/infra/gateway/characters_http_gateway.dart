import 'package:rick_and_morty_flutter/src/core/entities/character.dart';
import 'package:rick_and_morty_flutter/src/core/infra/api.dart';

class CharactersGateway {
  final API http;
  CharactersGateway(this.http);

  Future<List<Character>?> getCharacters(int page) async {
    final response = await http.get('character/?page=$page');
    final data = response['results'] as List;

    return data
        .map((e) => Character(
              id: e["id"],
              name: e["name"],
              status: e["status"],
              species: e["species"],
              gender: e["gender"],
              image: e["image"],
            ))
        .toList();
  }
}
