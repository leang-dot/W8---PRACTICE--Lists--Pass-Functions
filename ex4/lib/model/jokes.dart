class Jokes {
  int id;
  String title;
  String description;
  bool isFavorite;

  Jokes({
    required this.id,
    required this.title,
    required this.description,
    this.isFavorite = false,
  });
}

class JokesModel {
  List<Jokes> jokesList;

  JokesModel({required this.jokesList});

}
