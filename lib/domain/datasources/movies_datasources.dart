
import '../entities/move.dart';

abstract class MovieDatasource{
  Future<List<Movie>> getNowPlaying({int page=1});

}