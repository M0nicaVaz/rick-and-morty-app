class Character {
  final int id;
  final String name;
  final String status;
  final String species;
  final String gender;
  final String image;
  final String? origin;
  final String? location;
  final String? episode;

  Character(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.gender,
      required this.image,
      this.origin,
      this.location,
      this.episode});
}
