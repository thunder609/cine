
import '../entities/move.dart';

abstract class MoviesDatasource{
  Future<List<Movie>> getNowPlaying({int page=1});

}