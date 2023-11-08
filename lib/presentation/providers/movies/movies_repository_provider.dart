import 'package:cinema_pedia_devta/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinema_pedia_devta/infrastructure/repositories/movie_repository_impl.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

// Este repositorio es inmutable ( solo Lectura )
final movieRepositoryProvider = Provider((ref) {
  // gracias a la Clean Architectura...
  // Solo debo cambiar aqui mi datasource
  return MovieRepositoryImpl( MoviedbDatasource() );
});
