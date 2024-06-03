import 'package:rick_and_morty_flutter/src/core/entities/character.dart';
import 'package:rick_and_morty_flutter/src/core/infra/api.dart';
import 'package:rick_and_morty_flutter/src/core/infra/dto/list_characters.dto.dart';

class CharactersGateway {
  final API http;
  CharactersGateway(this.http);

  Future<ListCharactersDto> getCharacters(int page, String name) async {
    final dynamic response = await http.get('character/?page=$page&name=$name');
    final List<dynamic> data = response['results'] as List<dynamic>;
    final List<Character> results = data
        .map((dynamic e) => Character(
              id: e["id"],
              name: e["name"],
              status: e["status"],
              species: e["species"],
              gender: e["gender"],
              image: e["image"],
            ))
        .toList();

    return ListCharactersDto(
        count: response['info']['count'],
        pages: response['info']['pages'],
        results: results);
  }
}
