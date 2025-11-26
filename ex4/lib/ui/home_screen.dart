import "package:flutter/material.dart";
import "../data/jokes_data.dart";
import "../model/jokes.dart";


class HomePage extends StatefulWidget {
  final Color appColor;
  const HomePage({required this.appColor, super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onFavoriteClick(int id) {
    setState(() {
      for (var joke in jokesData.jokesList) {
        joke.isFavorite = false;
      }

      int index = jokesData.jokesList.indexWhere((el) => el.id == id);
      jokesData.jokesList[index].isFavorite = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: jokesData.jokesList.map((el) {
          return FavoriteCard(
            joke: el,
            appColor: widget.appColor,
            onFavoriteClick: () => onFavoriteClick(el.id),
          );
        }).toList(),
      ),
    );
  }
}

class FavoriteCard extends StatelessWidget {
  final Jokes joke;
  final Color appColor;
  final VoidCallback onFavoriteClick;

  const FavoriteCard({
    required this.joke,
    required this.appColor,
    required this.onFavoriteClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: .5, color: Colors.grey)),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  joke.title,
                  style: TextStyle(
                    color: appColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 10),
                Text(joke.description),
              ],
            ),
          ),
          IconButton(
            onPressed: joke.isFavorite ? null : onFavoriteClick,
            icon: Icon(
              joke.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: joke.isFavorite ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
