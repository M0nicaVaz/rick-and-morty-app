import 'package:rick_and_morty_flutter/src/core/entities/character.dart';

class ListCharactersDto {
  final int count;
  final String? next;
  final String? prev;
  final int pages;
  final List<Character> results;

  ListCharactersDto({
    required this.pages,
    required this.count,
    required this.results,
    this.next,
    this.prev,
  });
}
