import 'package:cinema_pedia_devta/presentation/screens/screens.dart';
import 'package:cinema_pedia_devta/presentation/views/views.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return HomeScreen(
          childView: child,
        );
      },
      routes: [
        //^ Tab - Favorite
        GoRoute(
          path: '/favorites',
          builder: (context, state) => const FavoritesView(),
        ),
        //^ Tab - Home
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeView(),
          routes: [
            GoRoute(
              path: 'movie/:id',
              name: MovieScreen.name,
              builder: (context, state) {
                final String movieId = state.pathParameters['id'] ?? 'no-id';
                return MovieScreen(movieId: movieId);
              },
            ),
          ],
        ),
      ],
    )
  ],
);

//* Navegacion Padre e Hijo
// GoRoute(
//   path: '/',
//   name: HomeScreen.name,
//   builder: (context, state) => const HomeScreen(
//     childView: HomeView(),
//   ),
//   routes: [
//     GoRoute(
//       path: 'movie/:id',
//       name: MovieScreen.name,
//       builder: (context, state) {
//         final String movieId = state.pathParameters['id'] ?? 'no-id';
//         return MovieScreen(movieId: movieId);
//       },
//     ),
//   ],
// )
