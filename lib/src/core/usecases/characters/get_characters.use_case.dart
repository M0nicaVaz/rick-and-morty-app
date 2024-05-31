import 'package:rick_and_morty_flutter/src/core/infra/gateway/characters_http_gateway.dart';

class GetCharactersUseCase {
  final CharactersGateway _charactersGateway;

  GetCharactersUseCase(this._charactersGateway);

  Future execute(int page) async {
    return await _charactersGateway.getCharacters(page);
  }
}
