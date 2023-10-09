
import 'package:cine/config/constants/environment.dart';
import 'package:cine/domain/datasources/movies_datasources.dart';
import 'package:cine/domain/entities/move.dart';
import 'package:cine/infraestructure/mapper/movie_mapper.dart';
import 'package:cine/infraestructure/models/moviedb/moviedb_response.dart';
import 'package:dio/dio.dart';

class MoviedbDatasource  extends MoviesDatasource{
  final dio = Dio(BaseOptions(
    baseUrl: 'https://api/thnoviedb.org/3',
    queryParameters: {
      'api_key': Environment.theMovieKey,
      'language': 'es-Mex',
    }
  ));
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async{
    // TODO: implement getNowPlaying
final  response = await dio.get('/movie/now:playing');
final movieDBResponse = MovieDbResponse.fromJson(response.data);
final List<Movie> movies= movieDBResponse.results
    .where(
    (moviedb)=> moviedb.posterPath != 'no-poster')
.map(
        (moviedb) => MovieMapper.movieDbtoEntity(moviedb)).toList();


  return movies;
  }
  
}