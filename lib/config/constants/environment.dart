import 'package:flutter_dotenv/flutter_dotenv.dart';

 class Environment{
  static String theMovieKey=dotenv.env['THE_MOVIE_KEY'] ?? 'Nohay Key';
}