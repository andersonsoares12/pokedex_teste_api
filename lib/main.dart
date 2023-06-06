
import 'package:flutter/material.dart';
import 'package:pokedex/presentation/screens/pokedex.dart';

import 'data/reporsitories/pokemon_repository.dart';
import 'domain/user_cases/fetch_pokemon_list_use_case.dart';

void main() {
    final PokemonRepository repository = PokemonRepository();
  final FetchPokemonListUseCase useCase = FetchPokemonListUseCase(repository);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Pokedex(useCase: useCase,), 
    ),
  );
}
