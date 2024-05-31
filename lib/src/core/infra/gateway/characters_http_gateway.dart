import 'package:rick_and_morty_flutter/src/core/entities/character.dart';
import 'package:rick_and_morty_flutter/src/core/infra/api.dart';

class CharactersGateway {
  final API http;
  CharactersGateway(this.http);

  Future<List<Character>?> getCharacters() async {
    final response = await http.get('/character');
    if (response.statusCode == 200) {
      final data = response.data['results'] as List;
      return data
          .map((e) => Character(
                gender: e["gender"],
                id: e["id"],
                image: e["image"],
                location: e["location"],
                name: e["name"],
                origin: e["origin"],
                species: e["species"],
                status: e["status"],
              ))
          .toList();
    }

    return null;
  }
}
