import 'package:rick_and_morty_flutter/src/core/infra/api.dart';
import 'package:rick_and_morty_flutter/src/core/infra/gateway/characters_http_gateway.dart';
import 'package:rick_and_morty_flutter/src/core/usecases/characters/get_characters.use_case.dart';

class ContainerRegistry {
  static final _http = API();

  //---------------- gateways ----------------
  static final CharactersGateway _charactersGateway = CharactersGateway(_http);

  //---------------- usecases ----------------
  static final GetCharactersUseCase getCharactersUseCase =
      GetCharactersUseCase(_charactersGateway);
}
