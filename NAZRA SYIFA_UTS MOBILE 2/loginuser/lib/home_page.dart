import 'package:flutter/material.dart';
import 'package:loginuser/model/movie.dart';
import 'package:loginuser/movie_card_widget.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie List"),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          final movie = movieList[index];

          return MovieCard(
            movie: movie,
          );
        },
      ),
    );
  }
}