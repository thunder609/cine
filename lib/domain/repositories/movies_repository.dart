
import '../entities/move.dart';

abstract class MoviesRepository{
  Future<List<Movie>> getNowPlaying({int page=1});

}
