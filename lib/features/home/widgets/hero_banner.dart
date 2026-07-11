import 'package:flutter/material.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF8B5CF6),
            Color(0xFF5B21B6),
            Color(0xFF1A1A1A),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.deepPurple.withOpacity(0.35),
            blurRadius: 30,
            spreadRadius: 2,
            offset: const Offset(0, 12),
          ),
        ],
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),

        child: Stack(
          children: [

            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(.75),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(24),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 8,
                    ),

                    decoration: BoxDecoration(
                      color: const Color(0xFFFFD54F),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: const Text(
                      "FEATURED TODAY",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                        fontSize: 12,
                      ),
                    ),
                  ),

                  const Spacer(),
                  const Text(
                    "THE LAST KINGDOM",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      height: 1.1,
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    "Action • Adventure • Drama",
                    style: TextStyle(
                      color: Color(0xFFFFD54F),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    "A warrior rises to reclaim his destiny in an epic battle for the future. Stream the latest blockbuster only on IFFARIX.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      height: 1.6,
                    ),
                  ),

                  const SizedBox(height: 28),

                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.black,
                        ),
                        label: const Text(
                          "Play",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFD54F),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),

                      const SizedBox(width: 14),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        label: const Text(
                          "My List",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.white38,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 22,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFD54F),
                        size: 20,
                      ),
                      SizedBox(width: 6),
                      Text(
                        "9.8",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 18),
                      Icon(
                        Icons.schedule,
                        color: Colors.white70,
                        size: 18,
                      ),
                      SizedBox(width: 6),
                      Text(
                        "2h 18m",
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}