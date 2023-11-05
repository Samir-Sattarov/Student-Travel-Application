import 'package:flutter/material.dart';

class FavoritesSectionSecondScreen extends StatefulWidget {
  static route() =>
      MaterialPageRoute(builder: (_) => const FavoritesSectionSecondScreen());
  const FavoritesSectionSecondScreen({super.key});

  @override
  State<FavoritesSectionSecondScreen> createState() =>
      _FavoritesSectionSecondScreenState();
}

class _FavoritesSectionSecondScreenState
    extends State<FavoritesSectionSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Placeholder());
  }
}
