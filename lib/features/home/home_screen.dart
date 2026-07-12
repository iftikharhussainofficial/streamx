import 'package:flutter/material.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/hero_banner.dart';
import 'widgets/movie_row.dart';
import 'widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final movies = [
      "The Last Kingdom",
      "Dark Horizon",
      "Shadow Hunter",
      "Lost Island",
      "Galaxy War",
      "Red Zone",
      "Night Hunter",
      "Avengers",
      "Batman",
      "Superman",
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF090909),

      appBar: const CustomAppBar(),

      body: ListView(
        children: [
          const HeroBanner(),

          const SizedBox(height: 25),

          const SectionTitle(title: "Trending Now"),

          const SizedBox(height: 15),

          MovieRow(
            movies: movies,
          ),

          const SizedBox(height: 30),

          const SectionTitle(title: "Continue Watching"),

          const SizedBox(height: 15),

          MovieRow(
            movies: movies,
          ),

          const SizedBox(height: 30),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF111111),
        selectedItemColor: const Color(0xFFFFD369),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: "Downloads",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}