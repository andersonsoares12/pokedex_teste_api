import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/domain/user_cases/fetch_pokemon_list_use_case.dart';

import '../../domain/models/pokemon.dart';
import 'detalhes_pokemons.dart';

class Pokedex extends StatefulWidget {
  const Pokedex({Key? key, required this.useCase}) : super(key: key);
  final FetchPokemonListUseCase useCase;

  @override
  State<Pokedex> createState() => _PokedexState();
}

class _PokedexState extends State<Pokedex> {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.12, 50, 16.12, 0),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/icons/Pokeball_icon.png'),
                    fit: BoxFit.cover,
                    height: 23.76,
                    width: 24,
                  ),
                ),
                Text(
                  'Pokédex',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontSize: 24,
                    color: const Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                child: Container(
                  width: 280,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    shape: BoxShape.rectangle,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        //Icons.search,
                        color: Colors.red.shade800,
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
                      Text(
                        'Seach',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: Colors.grey.shade800,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 0, 8, 3),
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                    padding: const EdgeInsets.all(8),
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      shape: BoxShape.rectangle,
                    ),
                    child: const Image(
                      image: AssetImage(
                        'assets/icons/icon_A.png',
                      ),
                      color: Color(0xFFDC0A2D),
                      fit: BoxFit.cover,
                      height: 10,
                      width: 9.33,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.fromLTRB(8, 24, 8, 24),
              width: 410, //screenWidth * 0.95,
              height: 800,//screenHeight * 0.80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: FutureBuilder<List<Pokemon>>(
                future: _pokemonListFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
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
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetalhesPokemons(pokemon: pokemon),
                              ),
                            );
                          },
                          child: Card(
                            child: Column(
                              children: [
                                
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        '#0${pokemon.id}',
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
          ),
        ],
      ),
    );
  }
}
