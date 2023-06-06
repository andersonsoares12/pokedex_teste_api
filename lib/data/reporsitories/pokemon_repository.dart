import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../domain/models/pokemon.dart';

class PokemonRepository {
  Future<List<Pokemon>> fetchPokemonList() async {
    final response = await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/?offset=0&limit=20'));
    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      final List<dynamic> results = jsonBody['results'];

      List<Pokemon> pokemonList = [];
      for (var result in results) {
        String pokemonUrl = result['url'];
        final pokemonResponse = await http.get(Uri.parse(pokemonUrl));
        if (pokemonResponse.statusCode == 200) {
          final pokemonJson = json.decode(pokemonResponse.body);
          Pokemon pokemon = Pokemon.fromJson(pokemonJson);
          pokemonList.add(pokemon);
        }
      }
      return pokemonList;
    } else {
      throw Exception('Failed to fetch Pokemon list');
    }
  }
}
