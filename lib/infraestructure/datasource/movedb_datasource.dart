
import 'package:cine/config/constants/environment.dart';
import 'package:cine/domain/datasources/movies_datasources.dart';
import 'package:cine/domain/entities/move.dart';
import 'package:cine/infraestructure/mapper/movie_mapper.dart';
import 'package:cine/infraestructure/models/moviedb/moviedb_response.dart';
import 'package:dio/dio.dart';


class MoviedbDatasource extends MoviesDatasource {

  final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': api_key,
        //'api_key':'af5c5d14ec30bea7a21004b765e6c3d3',
        'language': 'es-MX'
      }
  ));


  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {

    final response = await dio.get('/movie/now_playing');
    final movieDBResponse = MovieDbResponse.fromJson(response.data);

    final List<Movie> movies = movieDBResponse.results
        .where((moviedb) => moviedb.posterPath != 'no-poster' )
        .map(
            (moviedb) => MovieMapper.movieDBToEntity(moviedb)
    ).toList();

    return movies;
  }
  
}