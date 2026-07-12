import 'package:flutter/material.dart';

import 'widgets/hero_banner.dart';
import 'widgets/movie_row.dart';
import 'widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090909),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "IFFARIX",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Color(0xFFFFD369),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),

      body: ListView(
        children: const [

          HeroBanner(),

          SectionTitle(title: "Trending Now"),

          MovieRow(
            movies: [
              "Movie 1",
              "Movie 2",
              "Movie 3",
              "Movie 4",
              "Movie 5",
            ],
          ),

          SizedBox(height: 20),

          SectionTitle(title: "Continue Watching"),

          MovieRow(
            movies: [
              "Episode 1",
              "Episode 2",
              "Episode 3",
              "Episode 4",
              "Episode 5",
            ],
          ),

          SizedBox(height: 30),
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