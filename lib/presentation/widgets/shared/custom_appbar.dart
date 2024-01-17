import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
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