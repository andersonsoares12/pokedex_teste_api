
import '../../data/models/pokemon.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> fetchPokemonList();
}
