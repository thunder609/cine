import 'package:flutter_dotenv/flutter_dotenv.dart';
final api_key='af5c5d14ec30bea7a21004b765e6c3d3';
class Environment {

 static String theMovieDbKey = dotenv.env['THE_MOVIEDB_KEY'] ?? 'No hay api key';


}