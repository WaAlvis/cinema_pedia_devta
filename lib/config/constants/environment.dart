import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  
  //^ Dejo Configurado ApiKey_personal, por facilidad de revision
  static String theMovieDbKey =
      dotenv.env['THE_MOVIEDB_KEY'] ?? 'No hay API_KEy';
}
