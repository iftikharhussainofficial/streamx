import '../models/movie_model.dart';

class MovieService {
  static List<Movie> trendingMovies = const [
    Movie(
      title: "The Last Kingdom",
      image: "",
      category: "Action",
      rating: 9.8,
      duration: "2h 18m",
    ),
    Movie(
      title: "John Wick",
      image: "",
      category: "Action",
      rating: 9.3,
      duration: "2h 05m",
    ),
    Movie(
      title: "Avatar",
      image: "",
      category: "Sci-Fi",
      rating: 8.9,
      duration: "3h 02m",
    ),
    Movie(
      title: "The Batman",
      image: "",
      category: "Crime",
      rating: 8.7,
      duration: "2h 56m",
    ),
    Movie(
      title: "Interstellar",
      image: "",
      category: "Sci-Fi",
      rating: 9.6,
      duration: "2h 49m",
    ),
  ];

  static List<Movie> continueWatching = const [
    Movie(
      title: "Money Heist",
      image: "",
      category: "Crime",
      rating: 9.0,
      duration: "45m",
    ),
    Movie(
      title: "Breaking Bad",
      image: "",
      category: "Drama",
      rating: 9.9,
      duration: "50m",
    ),
    Movie(
      title: "Dark",
      image: "",
      category: "Mystery",
      rating: 9.2,
      duration: "55m",
    ),
  ];
}