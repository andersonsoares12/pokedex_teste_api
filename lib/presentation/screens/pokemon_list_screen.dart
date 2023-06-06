import 'package:flutter/material.dart';
import '../../domain/models/pokemon.dart';
import '../../domain/user_cases/fetch_pokemon_list_use_case.dart';

class PokemonListScreen extends StatefulWidget {
  final FetchPokemonListUseCase useCase;

  const PokemonListScreen({Key? key, required this.useCase}) : super(key: key);

  @override
  _PokemonListScreenState createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  late Future<List<Pokemon>> _pokemonListFuture;

  @override
  void initState() {
    super.initState();
    _pokemonListFuture = widget.useCase.execute();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: FutureBuilder<List<Pokemon>>(
          future: _pokemonListFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  Pokemon pokemon = snapshot.data![index];
                  return Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8, top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '#${pokemon.id},',
                                style: const TextStyle(fontSize: 8),
                              ),
                            ],
                          ),
                        ),
                        Image.network(
                          pokemon.imageUrl,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          pokemon.name,
                          style: const TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  );
                },
              );
            } else {
              return const Text('No Pokemon found');
            }
          },
        ),
      ),
    );
  }
}
