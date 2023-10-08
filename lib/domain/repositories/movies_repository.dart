
import '../entities/move.dart';

abstract class MovieRepository{
  Future<List<Movie>> getNowPlaying({int page=1});

}