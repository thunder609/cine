import 'package:cine/domain/datasources/movies_datasources.dart';
import 'package:cine/domain/entities/move.dart';
import 'package:cine/domain/repositories/movies_repository.dart';

class MovieRepositoryImple extends MoviesRepository{
final MoviesDatasource datasource;
MovieRepositoryImple(this.datasource);
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    // TODO: implement getNowPlaying
return datasource.getNowPlaying(page:page);
  }

}