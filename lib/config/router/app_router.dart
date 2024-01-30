import 'package:cinema_pedia_devta/presentation/screens/screens.dart';
import 'package:cinema_pedia_devta/presentation/views/views.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');


final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state,
          StatefulNavigationShell navigationShell) {
        return HomeScreen(navigationShell: navigationShell);
      },
      branches: <StatefulShellBranch>[
        //^ Tab Home
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/',
              builder: (BuildContext context, GoRouterState state) =>
                  const HomeView(),
              routes: <RouteBase>[
                GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: 'movie/:id',
                    builder: (context, state) {
                      final String movieId =
                          state.pathParameters['id'] ?? 'no-id';
                      return MovieScreen(movieId: movieId);
                    }),
              ],
            ),
          ],
        ),
        //^ Tab Categories
        StatefulShellBranch(
          // navigatorKey: _sectionANavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: '/categories',
              builder: (context, state) => const CategoriesView(),
            ),
          ],
        ),
        //^ Tab Favorites
        StatefulShellBranch(
          // navigatorKey: _sectionANavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              path: '/favorites',
              builder: (context, state) => const FavoritesView(),
            ),
          ],
        )
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
