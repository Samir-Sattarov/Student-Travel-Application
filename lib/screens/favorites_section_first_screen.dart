import 'package:flutter/material.dart';

class FavoritesSectionFirstScreen extends StatefulWidget {
  static route() =>
      MaterialPageRoute(builder: (_) => const FavoritesSectionFirstScreen());
  const FavoritesSectionFirstScreen({super.key});

  @override
  State<FavoritesSectionFirstScreen> createState() =>
      _FavoritesSectionFirstScreenState();
}

class _FavoritesSectionFirstScreenState
    extends State<FavoritesSectionFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Placeholder());
  }
}
