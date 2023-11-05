import 'package:flutter/material.dart';

class FavoritesSectionThirdScreen extends StatefulWidget {
  static route() =>
      MaterialPageRoute(builder: (_) => const FavoritesSectionThirdScreen());
  const FavoritesSectionThirdScreen({super.key});

  @override
  State<FavoritesSectionThirdScreen> createState() =>
      _FavoritesSectionThirdScreenState();
}

class _FavoritesSectionThirdScreenState
    extends State<FavoritesSectionThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Placeholder());
  }
}
