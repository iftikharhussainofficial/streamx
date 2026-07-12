import 'package:flutter/material.dart';

import 'movie_card.dart';

class MovieRow extends StatelessWidget {
  final List<String> movies;

  const MovieRow({
    super.key,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieCard(
            title: movies[index],
            startColor: Colors.deepPurple,
            endColor: Colors.indigo,
          );
        },
      ),
    );
  }
}