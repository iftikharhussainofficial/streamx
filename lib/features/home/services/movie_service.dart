import '../models/movie.dart';

class MovieService {
  static List<Movie> getMovies() {
    return const [
      Movie(
        title: 'The Last Kingdom',
        image: '',
        category: 'Action • Adventure • Drama',
        rating: 9.8,
        duration: '2h 18m',
        description:
            'A warrior rises to reclaim his destiny in an epic battle.',
      ),
      Movie(
        title: 'Dark Horizon',
        image: '',
        category: 'Sci-Fi',
        rating: 9.4,
        duration: '2h 05m',
        description: 'A mysterious signal changes humanity forever.',
      ),
      Movie(
        title: 'Shadow Hunter',
        image: '',
        category: 'Action',
        rating: 9.2,
        duration: '1h 58m',
        description: 'One man stands against an entire criminal empire.',
      ),
      Movie(
        title: 'Lost Island',
        image: '',
        category: 'Adventure',
        rating: 8.9,
        duration: '2h 12m',
        description: 'Survival becomes the only rule.',
      ),
      Movie(
        title: 'Galaxy War',
        image: '',
        category: 'Sci-Fi',
        rating: 9.6,
        duration: '2h 30m',
        description: 'The greatest battle in the universe begins.',
      ),
      Movie(
        title: 'Red Zone',
        image: '',
        category: 'Thriller',
        rating: 8.8,
        duration: '1h 50m',
        description: 'Every second counts.',
      ),
    ];
  }
}