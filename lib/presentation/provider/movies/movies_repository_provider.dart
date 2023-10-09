

import 'package:cine/domain/datasources/movies_datasources.dart';
import 'package:cine/infraestructure/datasource/movedb_datasource.dart';
import 'package:cine/infraestructure/repositories/repository_implementation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final moviReposiotoryProvider =Provider((ref) {
  return MovieRepositoryImple(MoviedbDatasource());
      });
