import 'package:cinema_pedia_devta/domain/entities/movie.dart';
import 'package:cinema_pedia_devta/presentation/providers/movies/movies_providers.dart';
import 'package:cinema_pedia_devta/presentation/providers/movies/movies_slideshow_provider.dart';
import 'package:cinema_pedia_devta/presentation/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _HomeView());
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();
    // ^ Aqui llamamos el metodo inicial
    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    // ^ Aqui vemos el estado del provider
    final List<Movie> nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);
    final List<Movie> slideShowMovies = ref.watch(moviesSlideshowProvider);

    return Column(
      children: [
        const CustomAppbar(),
        MovieSlideShow(
          movies: slideShowMovies,
        )
      ],
    );
  }
}
