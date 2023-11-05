import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_travel_application/core/utils/assets.dart';

import 'package:student_travel_application/widgets/favorites_top_custom_icon_button.dart';

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
    return Scaffold(
      backgroundColor: const Color(0xffE8EEF3),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffE8EEF3),
        automaticallyImplyLeading: true,
        title: Text(
          'Favorites',
          style: GoogleFonts.nunito(
            fontSize: 32,
            fontWeight: FontWeight.w800,
            letterSpacing: -1,
            height: 1.28,
          ),
        ),
        actions: <Widget>[
          FavoritesTopCustomIconButton(
            onPressed: () {},
            icon: Icons.star,
            iconColor: const Color(0xff656F77),
          ),
          const SizedBox(
            width: 8,
          )
        ],
      ),
      body: Placeholder(),
    );
  }
}
