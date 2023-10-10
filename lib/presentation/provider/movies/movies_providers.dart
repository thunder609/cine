
import 'package:cine/domain/entities/move.dart';
import 'package:cine/presentation/provider/movies/movies_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final nowPlayingMoviesProvider = StateNotifierProvider<MoviesNotifier ,List<Movie>>((ref) {
  final fetchMoreMovies=ref.watch(moviReposiotoryProvider).getNowPlaying;
  return MoviesNotifier(
      fetchMoreMovies:fetchMoreMovies );
} );


typedef MovieCallBack = Future<List<Movie>> Function({int page});

class  MoviesNotifier  extends StateNotifier<List<Movie>>{
  int currectPage=0;
  MovieCallBack fetchMoreMovies;
  MoviesNotifier({required this.fetchMoreMovies }):super([]);
  Future<void> loadNextPage() async{
    currectPage++;
    final List<Movie> movies= await fetchMoreMovies(page:currectPage);
state = [...state,...movies];
  }

}
