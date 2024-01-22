import 'package:cinema_pedia_devta/domain/entities/actor.dart';




abstract class ActorsDatasource {

  Future<List<Actor>> getActorsByMovie( String movieId );

}