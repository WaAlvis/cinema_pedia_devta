import 'package:cinema_pedia_devta/domain/datasources/actors_datasource.dart';
import 'package:cinema_pedia_devta/domain/entities/actor.dart';
import 'package:cinema_pedia_devta/domain/repositories/actors_repository.dart';

class ActorRepositoryImpl extends ActorsRepository {
  final ActorsDatasource datasource;
  ActorRepositoryImpl(this.datasource);

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) {
    return datasource.getActorsByMovie(movieId);
  }
}
