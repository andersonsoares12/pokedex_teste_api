

import 'package:pokedex/domain/models/pokemon.dart';

import '../../data/reporsitories/pokemon_repository.dart';

class FetchPokemonListUseCase {
  final PokemonRepository repository;

  FetchPokemonListUseCase(this.repository);

  Future<List<Pokemon>> execute() {
    return repository.fetchPokemonList();
  }
}
