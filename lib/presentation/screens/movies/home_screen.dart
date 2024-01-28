import 'package:cinema_pedia_devta/presentation/widgets/widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({super.key, required this.childView});

  final Widget childView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: childView,
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
