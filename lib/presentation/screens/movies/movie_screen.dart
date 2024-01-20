import 'package:cinema_pedia_devta/domain/entities/movie.dart';
import 'package:flutter/material.dart';

class MovieScreen extends StatelessWidget {
  static const name = 'movie-screen';
  const MovieScreen({super.key, required this.movieId});
  final String movieId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movieId),
      ),
    );
  }
}
