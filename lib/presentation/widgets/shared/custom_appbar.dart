import 'package:cinema_pedia_devta/presentation/delegates/search_movie_delagate.dart';
import 'package:cinema_pedia_devta/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomAppbar extends ConsumerWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      // bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Icon(
              Icons.movie_creation_outlined,
              color: colors.primary,
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              'Cinemapedia',
              style: textTheme.titleMedium,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                final movieRepository = ref.read(movieRepositoryProvider);

                showSearch(
                  context: context,
                  delegate: SearchMovieDelegate(
                    searchMovies: movieRepository.searchMovies,
                  ),
                );
              },
              icon: const Icon(
                Icons.search,
              ),
            )
          ],
        ),
      ),
    );
  }
}
