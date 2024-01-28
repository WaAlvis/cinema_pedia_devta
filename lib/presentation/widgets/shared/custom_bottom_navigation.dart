import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    
    int getCurrentIndex(context) {
      final String location = GoRouterState.of(context).matchedLocation;

      final locationMap = {
        '/': 0,
        '/categories': 1,
        '/favorites': 2,
      };
      return locationMap[location] ?? 0;
    }

    void onItemTapped(BuildContext context, int index) {
      final Map<int, String> routeMap = {
        0: '/',
        1: '/',
        2: '/favorites',
      };

      final route = routeMap[index];
      if (route != null) {
        context.go(route);
      }
    }

    return BottomNavigationBar(
      elevation: 0,
      currentIndex: getCurrentIndex(context),
      onTap: (value) => onItemTapped(context, value),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_max), label: 'Inicio'),
        BottomNavigationBarItem(
            icon: Icon(Icons.label_outline), label: 'Categorías'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline), label: 'Favoritos'),
      ],
    );
  }
}
