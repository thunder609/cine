import '../../domain/entities/move.dart';
import '../models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDbtoEntity(MovieMovieDB moviedb) => Movie(
      adult: moviedb.adult,
      backdropPath:  (moviedb.backdropPath !='')
      ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
      : 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.lT3XhWmPG6G7scQs-vqFCwHaEk%26pid%3DApi&f=1&ipt=02afb227bdf39874be448ecdbff84887c85114b68c5d63bf573fd65e243aaad1&ipo=images',
      genreIds:  moviedb.genreIds.map((e) => e.toString()).toList(),
      id:  moviedb.id,
      originalLanguage:  moviedb.originalLanguage,
      originalTitle:  moviedb.originalTitle,
      overview:  moviedb.overview,
      popularity:  moviedb.popularity,
      posterPath:  (moviedb.posterPath !='')
        ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
        : 'no-poster',                        
      releaseDate:  moviedb.releaseDate,
      title:  moviedb.title,
      video:  moviedb.video,
      voteAverage:  moviedb.voteAverage,
      voteCount:  moviedb.voteCount);
}
