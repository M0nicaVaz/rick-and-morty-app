import 'package:rick_and_morty_flutter/src/core/entities/character.dart';
import 'package:rick_and_morty_flutter/src/core/infra/api.dart';

class CharactersGateway {
  final API http;
  CharactersGateway(this.http);

  Future<List<Character>> getCharacters() async {
    return await http.get("/characters");
  }
}
